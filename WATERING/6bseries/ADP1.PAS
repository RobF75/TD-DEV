unit adp1;

{
                         ADP1.PAS Tubo Pascal

                 Turbo Pascal Driver for the 6B series
                 of digitizing signal conditioners from
                 Analog Devices, Inc.

                 Copyright 1988,1989  by Analog Devices, Inc.

                 Author:			Norm Bernstein

		 With Significant Help from:    Skip Hanson


This is the Turbo Pascal driver program (unit) for use with the 6B series of
digitizing signal conditioners from Analog Devices, Inc.

This driver is provided in both precompiled unit form, as well
as in source code form. It is compatible with Turbo
Pascal versions 5.0 and 5.5 . Compatibility with future versions cannot be
assured. Due to widely disparate system configurations and environments,
Analog Devices cannot assure operability or suitability of this software
in all applications. WE STRONGLY RECOMMEND that all RAM resident utilities
and TSR programs (such as print spoolers) be disabled before attempting to
use this unit, since they may interfere with time-sensitive functions and
procedures.

This driver is divided into two levels. The first level 
consists of lower level procedures and functions that provide complete
access to all of the available commands in the 6B communications syntax.
These procedures and functions do not check context; i.e., they do not
determine if a particular command or function is appropriate for a given
module. They do, however, return a checkable error code as a global variable.

The second level procedures and functions make use of a "map",
or data structure, which contains the pertinent configuration information
about each module in a given 6B communications net. Via the use of this map,
the procedures and functions of this level can flag contextual errors, and may
be easier to use than the level one primitives. The map is structurally
identical to the one in the SIXBCCD (Configuration/Calibration/Demo) program;
furthermore, the ".MAP" files created and/or saved by the CCD program may be
referred to by the Level Two procedures and functions.

The source code for this Turbo Pascal Unit makes reference to procedures
and functions from "Turbo Async Plus", by Blaise Computing, Inc., the units
of which are NOT provided on this disk. Recompilation of this source code
will therefore not be possible unless the aforementioned package is first
obtained. The source code of this program is provided solely for
the informational purposes of 6B subsystem users.

}


interface


uses
  unit_A0,          {from TurboAsync}
  unit_A1;          {from TurboAsync}



type
  triple_byte = array[0..2] of byte;
  port_address = 0..2;
  bit_address = 0..7;
  bit_data = 0..1;

  module_record = record
                    range_code : 0..64;
                    baud_rate_code : 1..7;
                    format_code : 0..3;
                    tint_code : 0..1;
		    slew_code : 0..11;
		    exists : Boolean;
                    checksum : Boolean;
                    cfgmode : Boolean;
                  end;



var
  module_map : array[0..255] of module_record;
  module_file : file of module_record;


  sixb50_data: triple_byte;	       {global triple_byte (array of three bytes)
                                        used by SIXB50_READ_TRIPLE and SIXB50_READ_SYNC_DATA
                                        to return the three bytes of data from a 6B50 board. Re-
                                        quired because Turbo functions and procedure
                                        types must be simple}

  sixb_error_code : Word;

{
Error Codes -- The following is a list of errors corresponding to the error
	       codes returned in external byte variable "SIXB_ERROR_CODE" by
	       most of the procedures and functions:

               0: no errors

               1: Timeout error; module did not respond, or no such module
                  exists on the communications line

               2: Module returned the standard error message; command contained
                  context or syntax error

               3: module response garbled, collision with another module, or
                  other communications fault

               4: module responded with a sucesssful confirmation message, but
                  the embedded response address did not match the command
                  address. This special error code is necessary for checking
                  the response of modules being operated with the CONFIG jumper
                  installed; such modules always respond with their configured
                  address even though the command was sent with address 0. If
                  no module in the system is being operated with the CONFIG
                  jumper installed, treat this error just like error code 3.

	       5: special error code set by SIXB_SEARCH_ONE if no
		  module has been found at the specified address

               6: checksum error in module response (only reported if
                  global boolean variable "Checksum_enabled" is true)

               7: communications fault; attempt to open a communications
                  port failed

               8: reserved

               9: reserved

              10: file failed to open, or error writing file

              12: level II procedure/function error; specified module
                  does not exist in the map

}



  response_delay : Word;

             {all procedures and functions detect timeout errors
             by monitoring the time between the transmission of a command
             to a 6B module, and the onset of a reply from the addressed
             module. RESPONSE_DELAY is the variable which controls the
             amount of time allowed before the procedure or function
             returns with a timeout error code. When this unit is initial-
             ized, RESPONSE_DELAY is set to 400, which is sufficient time
             for all types of 6B commands, and allows for significant vari-
             ability in CPU speeds (this variable is used in a Turbo Pascal
             DELAY procedure call, and is nominally calibrated in milli-
             seconds, although CPU speed may affect its accuracy).

             For optimum response in critical applications, the user may
             alter RESPONSE_DELAY to suit the command being generated; for
             example, the data command results in significantly less delay
             time than does either a calibration or configuration command.

	     Procedures such as SIXB_READ_STATUS or SIXB_READ_DATA, are
             fast response commands which require very
	     little turn-around delay; for example, when using a 80286 based
	     AT compatible machine running at 10 MHz, a value of 8 for the
	     RESPONSE_DELAY parameter is a reliable minimum value. Procedures
	     which invoke internal conversion cycles, such as SIXB_READ_CJC,
	     SIXB_CALIBRATE_OFFSET, SIXB_SEND_CONFIG, and SIXB_CALIBRATE_SPAN
	     require significantly more time; since these commands are not
	     normally used in applications in a repetitive fashion, we suggest
	     using the default value of 400 for the RESPONSE_DELAY variable.

	     The procedures SIXB_SEARCH_ONE and SIXB_SEARCH_ALL are
	     radically affected by the RESPONSE_DELAY variable, and setting
	     a minimum time delay will dramatically speed these procedures.}

  checksum_enabled : Boolean;

             {The global variable CHECKSUM_ENABLED must be set true by the user
              if this driver is to be used with modules configured for checksum
              generation and checking; when this unit is initialized, this variable
              is set false. Mixed systems are not allowed; all modules must be
              operated with the same checksum option.}


  first_sync_read:boolean;

	     {special status code used with the syncronous sampling feature of the
        6B11/12/50. This variable is set TRUE the first time that a 6B11, 6b12
        or 6B50 module has been read for it's synchronous data, and is set FALSE for
        on subsequent reads. The purpose of this variable is to give the user
	      a method to insure that a sync command was received by a specific
	      module}


{--------------------------------------------------------------------}
{Note: the following group of procedures and functions are generic to all
6B operations}

        procedure sixb_open(port_no, baud : Byte);

		 {opens a serial port for use with the 6B family. PORT_NO
		 is 1 or 2 (for COM1 or COM2); BAUD is in the range of 1
		 thru 7, corresponding to 300 thru 19200 baud}

	procedure sixb_close;

		 {closes the previously opened port}


	procedure sixb_send_config(mod_address,
				   new_address,
				   range_code,
				   baud_rate_code,
				   mscl_code : Byte);

		 {valid for all 6B types; this command is used to configure
                  a module}

	procedure sixb_read_status(mod_address : Byte;
				   var configured_address,
				       range_code,
				       baud_rate_code,
				       mscl_code : Byte);

		 {valid for all 6B types; this command is used to read the current
		 configuration of the specified module}


{---------------------------------------------------------------}
{Note: the next group of procedures and functions are related to the 6B11,
6B12, and 6B13 input modules only. }

        function sixb_read_real(mod_address : Byte) : Real;
        function sixb_read_binary(mod_address : Byte) : Integer;

		  {functions which return the current input data from an
                  input module type (6B11, 12, or 13). There is a seperate
		  function for modules configured for binary data format;
		  modules configured for engineering units, percent of
                  span, or (in the case of 6B13) ohms format may all use the
                  SIXB_READ_REAL function}


	procedure sixb_calibrate_span(mod_address : Byte);
	procedure sixb_calibrate_offset(mod_address : Byte);

		 {procedures which automatically calibrate the span accuracy
     (6B11, 6B12, and 6B13) and offset accuracy (6B13 only) of the
		 input module types. DON'T execute these unless the module
		 is connected to the appropriate calibration signal!}


	function sixb_read_CJC(mod_address : Byte) : Real;

		 {returns the current value of the CJC sensor, in degrees C.
		 Valid only for 6B11 input modules; works regardless of
		 configured data format of the module}


{---------------------------------------------------------------}
{Note: the next group of procedures refer to the 6B21 current output
module only, and are all preceeded by the nomenclature 'SIXB21_. . . .'}


	procedure sixb21_write_engr(mod_address:byte; datum:real);
        procedure sixb21_write_percent(mod_address:byte; datum:real);
        procedure sixb21_write_binary(mod_address:byte; datum:integer);

		 {procedures to write an output value (i.e., set the output
                 current) of a 6B21 module; one procedure for each data for-
                 mat}


	function sixb21_readback_engr(mod_address : Byte) : Real;
        function sixb21_readback_percent(mod_address : Byte) : Real;
        function sixb21_readback_binary(mod_address : Byte) : Integer;

		 {functions which return the actual output current of
		 a specified 6B21 module (using the reduced acc'y internal
		 readback A/D converter in each module); one function
		 for each data format.}


	function sixb21_readsp_engr(mod_address : Byte) : Real;
        function sixb21_readsp_percent(mod_address : Byte) : Real;
        function sixb21_readsp_binary(mod_address : Byte) : Integer;

		 {functions which return the current setpoint value from
                 a specified 6B21 module; one function for each data
                 format}


	procedure sixb21_trim(mod_address:byte; trimval:integer);

		 {procedure to adjust the output current of a specified 6B21
                 module in preparation for issuing a calibration command; the
                 integer argument has a range of +127 to -128 and each unit
		 represents approximately 1.5 microamperes of adjustment; for
		 example, a trimval of +3 would cause the output current to
		 increase by approximately 4.5 uA}


	procedure sixb21_set_default(mod_address:byte);

		 {procedure which issues a command to the 6B21 establishing
		 the current output current as the new default power-up
		 current (i.e., the current at which the 6B21 will operate
		 the next time it is powered up of reset)}



        procedure sixb21_calibrate_offset(mod_address:byte);
        procedure sixb21_calibrate_span(mod_address:byte);

           {procedures which establish the present output current as the
           reference point for either the span (i.e., 20 ma.) or the
           offset (i.e., 4 ma); these procedures write the coeficients
           into EEPROM for future use. These procedures are ordinarily
           invoked AFTER the module has been set at the desired calibration
           point using a combination of the SIXB21_WRITE_.. procedure and/or
           the SIXB21_TRIM procedure.

{----------------------------------------------------------------------}
{Note: the next group of procedures and functions refer to the 6B50
Digital I/O board, and are all preceeded by the nomenclature 'SIXB50_. . '}


	procedure sixb50_read_triple(mod_address:byte);
  procedure sixb50_read_sync_data(mod_address:byte);
	function sixb50_read_port(mod_address:byte; port:port_address):byte;
	function sixb50_read_bit(mod_address:byte; port:port_address; bit:bit_address):boolean;

		 {procedure and functions which return the port data from a
		 6B50 board. The byte and bit functions are obvious; the
		 SIXB50_READ_TRIPLE procedure returns its data via the
		 'SIXB50_DATA' variable (a triple_byte, or array of three
     bytes) and the SIXB50_READ_SYNC_DAT returns its data
     acquired with the last simultaneous acquisition}


	procedure sixb50_write_byte(mod_address:byte; port:port_address; byte_data:byte);
	procedure sixb50_write_bit(mod_address:byte; port:port_address; bit:bit_address; datum:bit_data);

		 {procedures to write to a bit or byte on the 6B50. The argument
		 for the 'SIXB50_WRITE_BIT' procedure is a 0 or 1, rather than a
		 boolean}


{-------------------------------------------------------------------}
{Note: the next group of procedures and functions are related to a special
feature of later production modules in the 6B11/12 family. This feature
allows for (nearly) simultaneous sampling on a number of modules via the use
of a special 'broadcast' command}


	procedure sixb_sync;

		{broadcast command which, when received by a 6B11
		or 6B12 module, forces an immediate input conversion
		to occur. The results of this conversion are stored
                in a special register and are retrieved only by the
		SIXB_READ_SYNC... functions}

	function sixb_read_sync_real(mod_address : Byte) : real;
	function sixb_read_sync_binary(mod_address : byte) : integer;

		 {functions which return the data most recently aquired via
		 the use of the SIXB_SYNC command}




{-------------------------------------------------------------------}

{Note: this group of functions are externally declared for the convenience
of the ADP2 module, are are not intended for customer use}


	function effective_address(mod_address:byte):byte;
	function hbyte(hcode:byte):string;
        procedure Sixb_Delay(msec : Word);

{------------------------------------------------------------------}



implementation

uses  crt,
      dos;


var
  oneMS : Word;			  {required by sixb_delay}
  hex_set : set of Char;
  hex_value : Byte;
  oldexitptr : Pointer;           {place marker for previous exit procedure}
  port_6b,                        {port number for current serial I/O}
  char_delay : Word;              {max delay time between chars sent by 6B}

   buffer : array[0..83] of Byte; {input and output queues plus four byte
                                      overhead used by Turbo Async Plus}
const
  cnvt_baud : array[1..7] of Byte = (2, 3, 4, 5, 6, 7, 8);
  {array to translate 6B baud rate codes into Turbo Async Plus baud rate codes}
  max_delay : array[1..7] of Byte = (66, 34, 16, 8, 4, 4, 4);
  {max char receipt delays for each valid baud rate}
  hexarray : array[0..15] of char = '0123456789ABCDEF';



  {$L sixb_del.obj}
  procedure init6bdly; external;
  procedure Sixb_Delay(msec : Word); external;

  {-----------------------------------------------------------------------}

  procedure initialize;

  begin
    hex_set := ['0'..'9', 'A'..'F'];
  end;

{----------------------------------------------------------------------}

function effective_address(mod_address:byte):byte;

begin
{ For internal use only.
  if module_map[mod_address].cfgmode then
    effective_address:=0
  else
}
    effective_address:=mod_address;
end;

{----------------------------------------------------------------------}

  function cleanstring(string_arg:string):string;

    {returns the parameter string with leading zeroes, fully justified}

  var
    i:integer;

  begin
    for i:= 1 to length(string_arg) do
      begin
	if string_arg[i]=' ' then string_arg[i]:='0';
	if string_arg[i]='-' then string_arg[1]:='-';
      end;
    if string_arg[1]='0' then string_arg[1]:='+';
  cleanstring:=string_arg;
  end;


  {----------------------------------------------------------------------}

  function hbyte(hcode : byte) : string;

  begin
       hbyte[0] := #2;
       hbyte[1] := hexarray[hcode shr 4];
       hbyte[2] := hexarray[hcode and 15];
  end;

  {------------------------------------------------------------------}

  function hword(hcode: integer) : string;

  begin
       hword[0] := #3;
       hword[1] := hexarray[hcode shr 8];
       hword[2] := hexarray[(hcode shr 4) and 15];
       hword[3] := hexarray[hcode and 15];
  end;

  {----------------------------------------------------------------------}

  function hexval(hexchar : char) : Byte;

    {hexval returns the integer value of the hexadecimal character argument}

  begin
    if (hexchar <= '9') and (hexchar >= '0') then hexval := Ord(hexchar)-48;
    if (hexchar <= 'F') and (hexchar >= 'A') then hexval := Ord(hexchar)-55;
  end;



  {------------------------------------------------------------------}

  function valid_hex(teststring : string) : Boolean;

     {returns true if the two character string defined by its argument
     is a valid hex code; false if not a valid hex code. If valid, the
     value of the string is returned in the global variable 'HEX_VALUE'}

  begin

    if ((teststring[1] in hex_set) and (teststring[2] in hex_set))
    then
      begin
        valid_hex := True;
        hex_value := (16*hexval(teststring[1])+hexval(teststring[2]));
      end
    else valid_hex := False;
  end;

  {--------------------------------------------------------------------}


  function valid_checksum(var repstring : string) : Boolean;


    {checks the string to see if it contains a valid checksum and
    returns true if it does; also strips the checksum}

  var
    stringsize : Integer;
    csacc : Integer;
    i : Integer;
    cs_is_valid, value_equals_csacc : Boolean;


  begin
    csacc := 0;
    stringsize := Length(repstring);
    for i := 1 to stringsize-2 do
      begin
        csacc := csacc+Ord(repstring[i]);
      end;

    cs_is_valid := valid_hex(Copy(repstring, stringsize-1, 2));
    if (hex_value = csacc) then value_equals_csacc := True;

    if cs_is_valid and value_equals_csacc then
      begin
        valid_checksum := True;
        repstring := Copy(repstring, 1, stringsize-2);
      end
    else valid_checksum := False;

  end;

  {---------------------------------------------------------------}


  procedure append_checksum(var comstring : string);

{this procedure appends a two character hexadecimal
checksum to the argument}

  var
    stringsize : Integer;
    csacc : Integer;
    i : Integer;


  begin
    csacc := 0;
    stringsize := Length(comstring);
    for i := 1 to stringsize do
      begin
        csacc := csacc+Ord(comstring[i]);
      end;

    comstring := comstring+hbyte(csacc);

  end;

  {--------------------------------------------------------------------------}

{string function SIXB_TALK -- This is the fundamental communications routine
to and from the 6B subsystem. SIXB_TALK takes, as its argument, the command
string to be sent to the 6B subsystem; it returns the reply string from
the addressed module. It also sets global variable ERROR_CODE to reflect
any errors as a result of the operation.

6B_TALK apppends the carriage return to the transmitted command, and strips
the carriage return from the reply message.

6B_TALK uses global variable SIXB_RESPONSE_DELAY to establish the allowable
timing of the delay between transmission of the command to the module, and
the onset of transmission of the reply from the module.}


  function sixb_talk(out_6b : string) : string;
  var
    command_string, ins : string;
    chars_remaining, errcode, portstat, timeout, rcvd : Word;
    temp : Char;

  begin


    command_string := out_6b;
    if checksum_enabled then append_checksum(out_6b);

    errcode := __oflsha1(port_6b);
    errcode := __iflsha1(port_6b);
    sixb_error_code := 0;
    ins := '';
    temp := #0;
    out_6b := out_6b+#13;
    errcode := __wrtsta1(port_6b, Ord(out_6b[0]), @out_6b[1], rcvd);
    repeat
       errcode:=__OQSizeA1(port_6b,chars_remaining);
    until chars_remaining=0;
    timeout := response_delay;
    while (sixb_error_code = 0) and (temp <> #13) do
      begin
        repeat
          sixb_delay(1);
          errcode := __rdcha1(port_6b, temp, rcvd, portstat);
          Dec(timeout);
        until (timeout = 0) or (errcode = 0);
        if timeout > 0 then
          begin
            if portstat = 0 then
              begin
                if temp <> #13 then ins := ins+temp
              end
            else
              sixb_error_code := 3;    {communications fault}
          end
        else
          sixb_error_code := 1;        {timeout}
        timeout := char_delay;
      end;

    if (sixb_error_code = 0) and checksum_enabled then
      begin
        if (not valid_checksum(ins)) then
          sixb_error_code := 6;
      end;

    sixb_talk := ins;
  end;

  {-----------------------------------------------------------------------}

  procedure sixb_sync;

  var
	chars_remaining,errcode,rcvd:word;
	out_6b:string;

  begin
	errcode:=__iflsha1(port_6b);
	errcode:=__oflsha1(port_6b);
	out_6b:='#**';
	errcode := __wrtsta1(port_6b, Ord(out_6b[0]), @out_6b[1], rcvd);
	repeat
	  errcode:=__OQSizeA1(port_6b,chars_remaining);
	until chars_remaining=0;
	sixb_delay(70);
  end;



  {------------------------------------------------------------------------}

{Procedure sixb_open -- this procedure opens a communications channel for use
with the 6B subsystem. The two required arguments are port number (1 indi-
cates COM1:, 2 indicates COM2:) and baud rate (1 thru 7 correspond to 300
baud thru 19.2 Kbaud, according to the definitions of the 6B module).

}

  procedure sixb_open(port_no, baud : Byte);
  var
    errcode : Word;

  begin
    errcode := __opena1(port_no, 40, 40, 0, 0, @buffer);
    if errcode = 0 then
      begin
        errcode := __setopa1(port_no, 1, cnvt_baud[baud]);
        if errcode = 0 then
          begin
            errcode := __setopa1(port_no, 2, 0);
            if errcode = 0 then
              begin
                errcode := __setopa1(port_no, 3, 3);
                if errcode = 0 then
                  begin
                    errcode := __setopa1(port_no, 4, 0);
                    if errcode = 0 then
                      errcode := __setopa1(port_no, 9, 0);
                  end;
              end;
          end;
      end;
    if errcode <> 0 then sixb_error_code := 7
    else
      begin
        sixb_error_code := 0;
        port_6b := port_no;
      end;
    char_delay := max_delay[baud];
  end;

  {-----------------------------------------------------------------------}

{Procedure SIXB_CLOSE closes the communications channel opened by the OPEN_6B
procedure}


  procedure sixb_close;
  var
    errcode : Word;

  begin
    errcode := __closea1(port_6b);
    port_6b := 0;
  end;

  {---------------------------------------------------------------------------}

  {Procedure MAINEXIT is the exit procedure for this unit}

  {$f+}

  procedure mainexit;
  begin
    ExitProc := oldexitptr;
    sixb_close;
  end;

  {$f-}

  {--------------------------------------------------------------------}

  procedure success_or_failure(mod_address : Byte; instring : string);

{this procedure parses and validates the reply to commands that are
simple "success or failure" commands, such as SIXB_CALIBRATE_SPAN}

  begin
    if sixb_error_code = 0 then
      begin
            {the reply to the command can either be a success response
            or an error response. First check the length of the response}

        if not(Length(instring) = 3) then sixb_error_code := 3;

            {if the sixb_error_code is still 0 at this point, we can assume that
            the reply string was the right length. Now we need to see if
            it was a success or failure response}

        if (sixb_error_code = 0) then
          begin
            if (instring = '?'+hbyte(mod_address)) then sixb_error_code := 2;


            if (instring = '!'+hbyte(mod_address)) then sixb_error_code := 0;

            if (copy(instring,1,1)='!') and
            (copy(instring,2,2)<>hbyte(mod_address)) then
            sixb_error_code := 4;
          end;

      end;
  end;


  {--------------------------------------------------------------------------}

  function sixb_read_real(mod_address : Byte) : Real;

  {this function returns the current signal data from the module whose address
  is "mod_address". If no errors result from this operation, the external
  byte variable "sixb_error_code" is returned as 0.

  Note: This function is intended for use with modules which have been
  configured for either an engineering units data format or a "% of FSR"
  data format; if used with a module configured for 2's comp binary format,
  a non-zero error code will result.}

  var
    instring : string;
    i, val_error : Integer;
    data_value : Real;

  begin
    sixb_error_code := 0;
    instring := sixb_talk('#'+hbyte(mod_address));
    if sixb_error_code = 0 then
      begin
        if Length(instring) <> 8 then
          sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
            Val(Copy(instring, 2, 7), data_value, val_error);
            if val_error <> 0 then
              sixb_error_code := 3;
          end;
        sixb_read_real := data_value;
      end;
  end;




  {---------------------------------------------------------------------------}

  function sixb_read_binary(mod_address : Byte) : Integer;

  {This function returns the current signal data from the module whose address
  is "mod_address". If no errors result from this operation, the external
  byte variable "sixb_error_code" is returned as 0.

  Note: This function is intended for use with modules which have been
  configured for 2's comp binary data format; if used with modules
  configured for either engineering units or "% of FSR" format, a non-zero
  error code will result.}

  var
    instring : string;
    data_value : Integer;
    i : Integer;
    val_error : Integer;


  begin
    data_value := 0;
    sixb_error_code := 0;
    instring := sixb_talk('#'+hbyte(mod_address));
    if sixb_error_code = 0 then
      begin
        if Length(instring) <> 5 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
            if valid_hex(Copy(instring, 2, 2)) then
              begin
                data_value := hex_value*256;
              end
            else sixb_error_code := 3;
          end;
        if sixb_error_code = 0 then
          begin
            if valid_hex(Copy(instring, 4, 2)) then
              begin
                data_value := data_value+hex_value;
              end
            else sixb_error_code := 3;
          end;
      end;
    sixb_read_binary := data_value;
  end;





  {---------------------------------------------------------------------------}
  function sixb21_readback_engr(mod_address : Byte) : Real;

  var
    instring : string;
    extimer,i, val_error : Integer;
    data_value : Real;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'8');
    if sixb_error_code = 0 then
      begin
	if Length(instring) <> 9 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
	    Val(Copy(instring, 4, 6), data_value, val_error);
            if val_error <> 0 then sixb_error_code := 3;
          end;
	sixb21_readback_engr := data_value;
      end;
  response_delay:=extimer;
  end;




  {---------------------------------------------------------------------------}
  function sixb21_readback_percent(mod_address : Byte) : Real;

  var
    instring : string;
    extimer,i, val_error : Integer;
    data_value : Real;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'8');
    if sixb_error_code = 0 then
      begin
	if Length(instring) <> 10 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
	    Val(Copy(instring, 4, 7), data_value, val_error);
            if val_error <> 0 then sixb_error_code := 3;
          end;
	sixb21_readback_percent := data_value;
      end;
  response_delay:=extimer;
  end;

  {----------------------------------------------------------------------}

  function sixb21_readback_binary(mod_address : Byte) : Integer;


  var
    instring : string;
    extimer,data_value : Integer;
    i : Integer;
    val_error : Integer;


  begin
    extimer:=response_delay;
    response_delay:=400;
    data_value := 0;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'8');
    if sixb_error_code = 0 then
      begin
	if Length(instring) <> 6 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
	    if ((valid_hex(copy(instring,4,2))=true) and
		(valid_hex(copy(instring,5,2))=true))  then
	      begin
		data_value:=(   (hexval(instring[4])*256)+
				(hexval(instring[5])*16)+
				(hexval(instring[6]))  );
	      end
	    else
	      begin
		sixb_error_code:=3;
	      end;
	  end;
      end;
    sixb21_readback_binary := data_value;
  response_delay:=extimer;
  end;

  {---------------------------------------------------------------------------}
  function sixb21_readsp_engr(mod_address : Byte) : Real;

  var
    instring : string;
    extimer,i, val_error : Integer;
    data_value : Real;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'6');
    if sixb_error_code = 0 then
      begin
	if Length(instring) <> 9 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
	    Val(Copy(instring, 4, 6), data_value, val_error);
            if val_error <> 0 then sixb_error_code := 3;
          end;
	sixb21_readsp_engr := data_value;
      end;
  response_delay:=extimer;
  end;




  {---------------------------------------------------------------------------}
  function sixb21_readsp_percent(mod_address : Byte) : Real;

  var
    instring : string;
    extimer,i, val_error : Integer;
    data_value : Real;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'6');
    if sixb_error_code = 0 then
      begin
	if Length(instring) <> 10 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
	    Val(Copy(instring, 4, 7), data_value, val_error);
            if val_error <> 0 then sixb_error_code := 3;
          end;
	sixb21_readsp_percent := data_value;
      end;
  response_delay:=extimer;
  end;

  {----------------------------------------------------------------------}

  function sixb21_readsp_binary(mod_address : Byte) : Integer;


  var
    instring : string;
    extimer,data_value : Integer;
    i : Integer;
    val_error : Integer;


  begin
    extimer:=response_delay;
    response_delay:=400;
    data_value := 0;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'6');
    if sixb_error_code = 0 then
      begin
	if Length(instring) <> 6 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
	    if ((valid_hex(copy(instring,4,2))=true) and
		(valid_hex(copy(instring,5,2))=true))  then
	      begin
		data_value:=(   (hexval(instring[4])*256)+
				(hexval(instring[5])*16)+
				(hexval(instring[6]))  );
	      end
	    else
	      begin
		sixb_error_code:=3;
	      end;
	  end;
      end;
    sixb21_readsp_binary := data_value;
  response_delay:=extimer;
  end;


  {----------------------------------------------------------------------}
  procedure sixb21_trim(mod_address:byte; trimval:integer);

  var
    instring : string;
    trimstring: string;
    extimer:integer;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    if trimval>127 then trimval:=127;
    if trimval<-127 then trimval:=-127;
    trimval:=trimval+128;
    trimstring:=hbyte(trimval xor 128);
    instring := sixb_talk('$'+hbyte(effective_address(mod_address))+'3'+trimstring);
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  response_delay:=extimer;
  end;

  {----------------------------------------------------------------------}
  procedure sixb21_set_default(mod_address:byte);

  var
    instring : string;
    extimer:integer;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(effective_address(mod_address))+'4');
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  response_delay:=extimer;
  end;

  {----------------------------------------------------------------------}

  procedure sixb21_calibrate_offset(mod_address:byte);

  var
    instring : string;
    extimer:integer;

  begin
    extimer:=response_delAy;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(effective_address(mod_address))+'0');
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  response_delay:=extimer;
  end;
  {----------------------------------------------------------------------}

  procedure sixb21_calibrate_span(mod_address:byte);

  var
    instring : string;
    extimer:integer;

  begin
    extimer:=response_delay;
    response_delay:=400;
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(effective_address(mod_address))+'1');
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  response_delay:=extimer;
  end;

  {----------------------------------------------------------------------}
  procedure sixb21_write_engr(mod_address:byte; datum:real);

  var
    tempstring,instring:string;

  begin
    sixb_error_code:=0;
    if datum>22.0 then datum:=22.0;
    if datum<0.0 then datum:=0;
    str(datum:7:3,tempstring);
    tempstring:=cleanstring(tempstring);
    tempstring:=copy(tempstring,2,6);
    instring:=sixb_talk('#'+hbyte(mod_address)+tempstring);

    if sixb_error_code=0 then
      begin
	 if instring='>' then sixb_error_code:=0
	else
	 if instring=('?'+hbyte(mod_address)) then sixb_error_code:=2
	else
	 sixb_error_code:=3;
      end;

   end;

  {----------------------------------------------------------------------}
  procedure sixb21_write_percent(mod_address:byte; datum:real);

  var
    tempstring,instring:string;

  begin
    sixb_error_code:=0;
    if datum>120.0 then datum:=120.0;
    if datum<-25.0 then datum:=-25.0;
    str(datum:7:2,tempstring);
    tempstring:=cleanstring(tempstring);
    instring:=sixb_talk('#'+hbyte(mod_address)+tempstring);

    if sixb_error_code=0 then
      begin
	 if instring='>' then sixb_error_code:=0
	else
	 if instring=('?'+hbyte(mod_address)) then sixb_error_code:=2
	else
	 sixb_error_code:=3;
      end;

   end;

  {----------------------------------------------------------------------}
  procedure sixb21_write_binary(mod_address:byte; datum:integer);

  var
    tempstring,instring:string;

  begin
    sixb_error_code:=0;
    if datum>4095 then datum:=4095;
    if datum<0 then datum:=0;
    tempstring:=hword(datum);
    instring:=sixb_talk('#'+hbyte(mod_address)+tempstring);

    if sixb_error_code=0 then
      begin
	 if instring='>' then sixb_error_code:=0
	else
	 if instring=('?'+hbyte(mod_address)) then sixb_error_code:=2
	else
	 sixb_error_code:=3;
      end;

   end;

  {----------------------------------------------------------------------}

  procedure sixb_send_config(mod_address,
                             new_address,
                             range_code,
                             baud_rate_code,
                             mscl_code : Byte);

  {This procedure sends a configuration command to the the 6B module currently
  addressed at "current_address". If no errors result from this operation, the
  external byte variable "sixb_error_code" is returned as 0.}

  var
    instring : string;


  begin
    sixb_error_code := 0;
    instring := sixb_talk('%'+hbyte(mod_address)+hbyte(new_address)+hbyte(range_code)+
                          hbyte(baud_rate_code)+hbyte(mscl_code));
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  end;



  {-------------------------------------------------------------------------}

  procedure sixb_read_status(mod_address : Byte;
                             var configured_address,
                             range_code,
                             baud_rate_code,
                             mscl_code : Byte);

  {This procedure reads the current configuration status of the 6B module
  currently addressed at "mod_address". The result is found in external
  variables "configured_address", "range_code", "baud_rate_code", and
  "mscl_code". If no errors result from this operation, the external byte
  variable "sixb_error_code" is returned as 0.}




  var
    instring : string;

  begin
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'2');
    if sixb_error_code = 0 then
      begin
        if (sixb_error_code = 0) then
          begin
            if Length(instring) <> 9 then sixb_error_code := 3;
          end;

        if (sixb_error_code = 0) then
          begin
            if Copy(instring, 1, 1) <> '!' then sixb_error_code := 3;
          end;

        if (sixb_error_code = 0) then
          begin
            if (valid_hex(Copy(instring, 2, 2))) then configured_address := hex_value
            else sixb_error_code := 3;
          end;

        if (sixb_error_code = 0) then
          begin
            if (valid_hex(Copy(instring, 4, 2))) then range_code := hex_value
            else sixb_error_code := 3;
          end;

        if (sixb_error_code = 0) then
          begin
            if (valid_hex(Copy(instring, 6, 2))) then baud_rate_code := hex_value
            else sixb_error_code := 3;
          end;

        if (sixb_error_code = 0) then
          begin
            if (valid_hex(Copy(instring, 8, 2))) then mscl_code := hex_value
            else sixb_error_code := 3;
          end;

        if (sixb_error_code = 0) then
          begin
            if (valid_hex(Copy(instring, 2, 2))) then configured_address := hex_value
            else sixb_error_code := 3;
          end;
      end;


  end;

  {-------------------------------------------------------------------------}

  function sixb_read_CJC(mod_address : Byte) : Real;

  {this function returns the current value, in degrees centigrade, of the
  CJC sensor associated with the module whose address is "mod_address". If
  no errors result from this operation, the external byte variable
  "sixb_error_code" is returned as 0.}

  var
    instring : string;
    i, val_error : Integer;
    data_value : Real;

  begin
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'3');
    if sixb_error_code = 0 then
      begin
        if Length(instring) <> 8 then sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
            Val(Copy(instring, 2, 7), data_value, val_error);
            if val_error <> 0 then sixb_error_code := 3;
          end;
        sixb_read_CJC := data_value;
      end;
  end;

  {-------------------------------------------------------------------------}

  function sixb_read_sync_real(mod_address : Byte) : real;


  var
    instring : string;
    i, val_error : Integer;
    data_value : Real;
    sync_read_value: integer;

  begin
    sixb_error_code := 0;
    first_sync_read := TRUE;
    instring := sixb_talk('$'+hbyte(mod_address)+'4');


    if sixb_error_code = 0 then
      begin
        if Length(instring) <> 11 then
          sixb_error_code := 3;
        if sixb_error_code = 0 then
          begin
            Val(Copy(instring, 5, 7), data_value, val_error);
            if val_error <> 0 then
              sixb_error_code := 3;
            sixb_read_sync_real := data_value;
            val(copy(instring,4,1),sync_read_value,val_error);
            if ((val_error=0) and (sync_read_value=0)) then first_sync_read:=false;
            if ((val_error=0) and (sync_read_value=1)) then first_sync_read:=true;
          end;
      end;
  end;
  {-------------------------------------------------------------------------}

  function sixb_read_sync_binary(mod_address : Byte) : integer;


  var
    instring : string;
    i, val_error : Integer;
    data_value : integer;
    sync_read_value: integer;

  begin
    sixb_error_code := 0;
    first_sync_read := TRUE;
    instring := sixb_talk('$'+hbyte(mod_address)+'4');


    if sixb_error_code = 0 then
      begin  {if error code 0}
	if Length(instring) <> 8 then sixb_error_code := 3;
        if sixb_error_code = 0 then
	  begin
	    if valid_hex(Copy(instring, 5, 2)) then
              begin
                data_value := hex_value*256;
              end
            else sixb_error_code := 3;
          end;
        if sixb_error_code = 0 then
          begin
	    if valid_hex(Copy(instring, 7, 2)) then
              begin
                data_value := data_value+hex_value;
              end
            else sixb_error_code := 3;
          end;
    sixb_read_sync_binary := data_value;
    if sixb_error_code=0 then
       begin
	  val(copy(instring,4,1),sync_read_value,val_error);
	  if ((val_error=0) and (sync_read_value=0)) then first_sync_read:=false;
	  if ((val_error=0) and (sync_read_value=1)) then first_sync_read:=true;
       end;
  end; {if error code 0}
end;


  {-------------------------------------------------------------------------}

  procedure sixb_calibrate_span(mod_address : Byte);

  {this procedure send a span calibration command to the module whose address
  is "mod_address". If no errors result from this operation, the external
  byte variable "sixb_error_code" is returned as 0.}

  var
    instring : string;

  begin
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'0');
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  end;


  {--------------------------------------------------------------------------}

  procedure sixb_calibrate_offset(mod_address : Byte);

  {This procedure sends an offset calibration command to the module whose
  address is "mod_address". If no errors result from this operation, the
  external byte variable "sixb_error_code" is returned as 0.}

    {Note: this command is valid only for the 6B13 RTD module}

  var
    instring : string;

  begin
    sixb_error_code := 0;
    instring := sixb_talk('$'+hbyte(mod_address)+'1');
    if sixb_error_code = 0 then
      begin
        success_or_failure(mod_address, instring);
      end;
  end;


  {-------------------------------------------------------------------------}


  procedure sixb50_read_triple(mod_address:byte);

  {SIXB50_READ_TRIPLE loads a triple byte (array of three bytes) containing
  the input/readback data of the addressed 6B50.}

  var
    instring:string;
    dummy: boolean;

  begin
    sixb_error_code := 0;
    instring:=sixb_talk('$'+hbyte(effective_address(mod_address))+'6');
    if sixb_error_code=0 then
       begin
	 if     ((length(instring)=7) and
		(instring[1]='!') and
		(valid_hex(copy(instring,2,2))) and
		(valid_hex(copy(instring,4,2))) and
		(valid_hex(copy(instring,6,2)))) then

	   begin
		dummy:=valid_hex(copy(instring,2,2));
		sixb50_data[0]:=hex_value;
		dummy:=valid_hex(copy(instring,4,2));
		sixb50_data[1]:=hex_value;
		dummy:=valid_hex(copy(instring,6,2));
		sixb50_data[2]:=hex_value;
	   end


	 else if ((length(instring)=4) and
		 (instring[1]='?') and
		 (valid_hex(copy(instring,2,2))) and
		 (hex_value=mod_address)) then
	   begin
		  sixb_error_code:=2;
	   end

	 else sixb_error_code:=3;

       end;
  end;



  {------------------------------------------------------------------------}
  procedure sixb50_read_sync_data(mod_address:byte);

  {SIXB50_READ_SYNC_DATA loads a triple byte (array of three bytes) containing
  the input/readback data of the addressed 6B50 most recently acquired via
  the use of the SIXB_SYNC command.}

  var
    instring:string;
    dummy: boolean;
    sync_read_value: integer;
    val_error : Integer;

  begin
    sixb_error_code := 0;
    first_sync_read := TRUE;
    instring:=sixb_talk('$'+hbyte(mod_address)+'4');
    if sixb_error_code=0 then
       begin
         if ((length(instring)=8) and
           (instring[1]='!') and
           (valid_hex(copy(instring,3,2))) and
           (valid_hex(copy(instring,5,2))) and
           (valid_hex(copy(instring,7,2)))) then

           begin
             dummy:=valid_hex(copy(instring,3,2));
             sixb50_data[0]:=hex_value;
             dummy:=valid_hex(copy(instring,5,2));
             sixb50_data[1]:=hex_value;
             dummy:=valid_hex(copy(instring,7,2));
             sixb50_data[2]:=hex_value;
             val(copy(instring,2,1),sync_read_value,val_error);
             if ((val_error=0) and (sync_read_value=1)) then first_sync_read:=true;
             if ((val_error=0) and (sync_read_value=0)) then first_sync_read:=false;
           end

         else
           if ((length(instring)=4) and
             (instring[1]='?') and
             (valid_hex(copy(instring,2,2))) and
             (hex_value=mod_address)) then
               begin
                 sixb_error_code:=2;
               end

           else sixb_error_code:=3;
       end;
  end;


  {------------------------------------------------------------------------}

  function sixb50_read_port(mod_address:byte; port:port_address):byte;

  begin
	sixb50_read_triple(mod_address);
	if sixb_error_code=0 then
	  sixb50_read_port:=sixb50_data[port];
  end;

  {------------------------------------------------------------------------}

  function sixb50_read_bit(mod_address:byte; port:port_address; bit:bit_address):boolean;

  var
    port_dat,mask:byte;


  begin
       sixb50_read_triple(mod_address);
       if sixb_error_code=0 then
	 port_dat:=sixb50_data[port];
	 mask:=1;
         mask:=mask shl bit;
	 if (port_dat and mask)>0 then sixb50_read_bit:=true
	 else sixb50_read_bit:=false;
  end;

  {------------------------------------------------------------------------}

  procedure sixb50_write_bit(mod_address:byte; port:port_address; bit:bit_address; datum:bit_data);

   var
     port_mask:byte;
     instring,cmd_string:string;

   begin
     sixb_error_code:=0;
     case port of
      0: port_mask:=$a0;
      1: port_mask:=$b0;
      2: port_mask:=$c0;
     end; {case}
     cmd_string:='#'+hbyte(mod_address)+hbyte(port_mask or bit)+hbyte(datum);
     instring :=sixb_talk(cmd_string);
     if not((sixb_error_code=0) and (instring='>'))  then
	success_or_failure(mod_address,instring);
   end;

  {------------------------------------------------------------------------}

  procedure sixb50_write_byte(mod_address:byte; port:port_address; byte_data:byte);
  var
    port_mask:byte;
    instring:string;

  begin
    sixb_error_code:=0;
    case port of
     0: port_mask:=$0a;
     1: port_mask:=$0b;
     2: port_mask:=$0c;
    end; {case}
    instring:=sixb_talk('#'+hbyte(mod_address)+hbyte(port_mask)+hbyte(byte_data));
    if not((sixb_error_code=0) and (instring='>')) then
      success_or_failure(mod_address,instring);
  end;

  {------------------------------------------------------------------------}


  {>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>}




  {the following procedure is a unit intialization procedure}



begin
  checksum_enabled := False;
  oldexitptr := ExitProc;
  ExitProc := @mainexit;
  response_delay := 400;
  port_6b := 0;
  initialize;
  init6bdly;
end.
