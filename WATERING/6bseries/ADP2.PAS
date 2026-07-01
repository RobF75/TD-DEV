unit adp2;


{     ADP2 Turbo Pascal
			Copyright 1989,1990 
			Analog Devices, Inc.
			Norwood, MA. 02062

			This file is part 2 of 2 parts; contains
			"map" related functions and procedures
			for use with the 6B series of digitizing
			signal conditioners.

}

interface


uses

  adp1;

var

  no_modules_found : Boolean;

	     {set by SIXB_SEARCH_ALL if no modules are found in the search}

  cfg_natural_address : byte;

	     {the natural (i.e., programmed) address of the module being operated
	      with the config jumper; this variable is set by SIXB_CONFIGURED_MODULE}



function sixb_read_data(mod_address : Byte) : Real;

             {returns data from specified input module in engineering units
             irrespective of the configured format of the module}

function sixb_read_sync_data(mod_address : Byte) : Real;

             {returns the 'sync' data of a 6B11 or 6B12 in engineering units
             irrespective of the configured format of the module. NOTE: this
             is a special feature that applies only to later revisions of
             the 6B11 and 6B12 firmware; consult the factory for specific
             details}

function sixb21_readback_data(mod_address:byte):real;

             {returns the 'readback' data (via the output current monitor
             circuit) from 6B21 modules, irrespective of the configured
             format of the module}

function sixb21_readsp_data(mod_address:byte):real;

             {returns the current setpoint data of a 6B21 module, irrespective
             of the configured format of the module. NOTE: the setpoint data
             and the actual output current may differ when the module is
             configured for controlled slewing; the setpoint data always
             reflects the 'target' current, which is reached only at the
             specified slew rate}

procedure sixb21_write_data(mod_address:byte; datum:real);

             {procedure which writes to the setpoint register of a specified
             6B21, irrespective of the configured format of the module}

procedure sixb_clrmap;

             {procedure which 'clears' the module map; after executing this
             procedure, the module map reflects no modules in existence in
             the map}

procedure sixb_loadmap(filename : string);

             {procedure which loads the module map from a disk file; the
             file may have been created with the 'SIXB_SAVE_MAP' procedure,
             or it may have been created via the 'MAP/SAVE' option in a
             corresponding revision of 'SIXBCCD'}

procedure sixb_savemap(filename : string);

             {procedure which saves the current module map to a disk file}

procedure sixb_search_one(mod_address : Byte; system_baud_rate : Byte);

             {procedure which searches for a single module at the specified
             address, and loads the corresponding entry in the module map with
             the modules' configuration information}

procedure sixb_search_all(baud_rate_code : Byte);

             {procedure which searches for all 256 possible modules and loads
             the corresponding configuration information into the module map.
             NOTE: this procedure may take significant time to execute,
             especially at low baud rates. If a 'progress' indication is desired,
             use 'SIXB_SEARCH_ONE' inside a loop instead}

function sixb_configured_module:integer;

             {function which returns the programmed address of a module being
             operated with the CONFIG jumper installed. NOTE: configuration
             information about such modules are stored in the module map at
             their programmed address, NOT at address 0}

implementation

uses  crt,
      dos;

    const
    spanfactor : array[0..43] of Real = (0.015, {15 millivolts FS}
                                         0.05, {50 millivolts FS}
                                         0.1, {100 millivolts FS}
                                         0.5, {500 millivolts FS}
                                         1.0, {1 volt FS}
                                         5.0, {5 volts FS}
                                         0.02, {20 ma FS}
                                         50.0, {50 volts FS}
                                         10.0, {10 volts FS}
                                         5.0, {5 volts FS}
                                         1.0, {1 volts FS}
                                         0.5, {500 millivolts FS}
                                         0.15, {150 millivolts FS}
                                         0.02, {20 ma FS}
                                         760.0, {760 degrees C FS}
                                         1000.0, {1000 degrees C FS}
                                         400.0, {400 degrees C FS}
                                         1000.0, {1000 degrees C FS}
                                         1750.0, {1750 degrees C FS}
                                         1750.0, {1750 degrees C FS}
                                         1800.0, {1800 degrees C FS}
                                         0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, {n.a.}
                                         100.0, {100 degrees C FS}
                                         100.0, {100 degrees F CS}
                                         200.0, {200 degrees C FS}
                                         600.0, {600 degrees C FS}
                                         100.0, {100 degrees C FS}
                                         100.0, {100 degrees C FS}
                                         200.0, {200 degrees C FS}
                                         600.0, {600 degrees C FS}
                                         100.0, {100 degrees C FS}
                                         100.0, {100 degrees C FS}
                                         120.0, {120 degrees C FS}
                                         120.0); {120 degrees C FS}

    ofsfactor : array[0..43] of Real = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                        -100.0, {-100 degrees C}
                                        0,
                                        500.0, {500 degrees C}
                                        500.0, {500 degrees C}
                                        500.0, {500 degrees C}
                                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                        -100.0, {-100 degrees C}
                                        0, 0, 0,
                                        -100.0, {-100 degrees C}
                                        0, 0, 0, {n.a.}
                                        -80.0, {-80 degrees C}
                                        0, 0, 0); {n.a.}



  {------------------------------------------------------------------}

  function file_exists(filename:string): boolean;

  var
     filvar:file;

  begin
       if length(filename)=0 then
          file_exists := false
       else
         begin
              assign(filvar,filename);
              reset(filvar,1);
              if ioresult=0 then
                 begin
                      file_exists:=true;
                      close(filvar);
                 end
                 else file_exists := false;
         end;
  end;



  {----------------------------------------------------------------------}

  function sixb_read_data(mod_address : Byte) : Real;

    {SIXB_READ_DATA reads the current signal data from the specified
    module and returns it as a real number, scaled to engineering units.
    SIXB_READ_DATA uses the configuration information in the module map
    to determine the expected format of the data, and scales it to
    engineering units accordingly}

  var
    range, fmt : Byte;
    ival : Integer;
    rval : Real;



  begin
    if module_map[mod_address].exists then

      begin

        fmt := module_map[mod_address].format_code;
        range := module_map[mod_address].range_code;

        case fmt of

          0 : begin
		rval := sixb_read_real(effective_address(mod_address));
              end;

          1 : begin
		rval := sixb_read_real(effective_address(mod_address));
                if ((range > 0) and (range <= 20)) then {6B11/12}
                  rval := (rval/100)*spanfactor[range];
                if ((range >= 32) and (range <= 43)) then {6B13}
                  rval := ((rval/100)*(spanfactor[range]-ofsfactor[range]))
                  +ofsfactor[range];
              end;

          2 : begin
		ival := sixb_read_binary(effective_address(mod_address));
                if ((range > 0) and (range <= 20)) then {6B11/12}
                  rval := (ival/32768)*spanfactor[range];
                if ((range >= 32) and (range <= 43)) then {6B13}
                  rval := ((ival/32768)*(spanfactor[range]-ofsfactor[range]))
                  +ofsfactor[range];
              end;

          3 : begin
		rval := sixb_read_real(effective_address(mod_address));
              end;

        end;                      {of case fmt}


    end else sixb_error_code := 12;
    sixb_read_data := rval;

  end;


  {----------------------------------------------------------------------}

  function sixb_read_sync_data(mod_address : Byte) : Real;

    {SIXB_READ_SYNC_DATA reads the value of the sync data from 6B11's or
    6B12's, irrespective of their configured format, and returns a real
    number scaled to the engineering units range of the modules. It is
    exactly analogous to the SIXB_READ_DATA command, except that the data
    reflects what is held in the sync data buffer, rather than the present
    input data value}

  var
    range, fmt : Byte;
    ival : Integer;
    rval : Real;



  begin
    if module_map[mod_address].exists then

      begin

        fmt := module_map[mod_address].format_code;
        range := module_map[mod_address].range_code;

        case fmt of

          0 : begin
		rval := sixb_read_sync_real(effective_address(mod_address));
              end;

          1 : begin
		rval := sixb_read_sync_real(effective_address(mod_address));
                if ((range > 0) and (range <= 20)) then {6B11/12}
                  rval := (rval/100)*spanfactor[range];
                if ((range >= 32) and (range <= 43)) then {6B13}
                  rval := ((rval/100)*(spanfactor[range]-ofsfactor[range]))
                  +ofsfactor[range];
              end;

          2 : begin
		ival := sixb_read_sync_binary(effective_address(mod_address));
                if ((range > 0) and (range <= 20)) then {6B11/12}
                  rval := (ival/32768)*spanfactor[range];
                if ((range >= 32) and (range <= 43)) then {6B13}
                  rval := ((ival/32768)*(spanfactor[range]-ofsfactor[range]))
                  +ofsfactor[range];
              end;


        end;                      {of case fmt}


    end else sixb_error_code := 12;
    sixb_read_sync_data:= rval;

  end;

  {----------------------------------------------------------------------}
  function sixb21_readback_data(mod_address:byte):real;

  var
    fmt,range: integer;
    pval,rval:real;
    ival:integer;

  begin
    if module_map[mod_address].exists then

      begin

        fmt := module_map[mod_address].format_code;
        range := module_map[mod_address].range_code;

        case fmt of

          0 : begin
		rval := sixb21_readback_engr(effective_address(mod_address));
              end;

          1 : begin
		rval := sixb21_readback_percent(effective_address(mod_address));
		if range=48 then
		  rval:=(rval/100.0)*20.0;
		if range=49 then
		  rval:=((rval/100.0)*16.0)+4.0;
	      end;

          2 : begin
		ival := sixb21_readback_binary(effective_address(mod_address));
		if range=48 then
		  rval := (ival/4096)*20.0;
		if range=49 then
		  rval := ((ival/4096)*16.0)+4.0;
	      end;


        end;                      {of case fmt}


    end else sixb_error_code := 12;
    sixb21_readback_data := rval;

  end;



  {----------------------------------------------------------------------}
  function sixb21_readsp_data(mod_address:byte):real;

  var
    fmt,range: integer;
    pval,rval:real;
    ival:integer;

  begin
    if module_map[mod_address].exists then

      begin

        fmt := module_map[mod_address].format_code;
        range := module_map[mod_address].range_code;

        case fmt of

          0 : begin
		rval := sixb21_readsp_engr(effective_address(mod_address));
              end;

          1 : begin
		rval := sixb21_readsp_percent(effective_address(mod_address));
		if range=48 then
		  rval:=(rval/100.0)*20.0;
		if range=49 then
		  rval:=((rval/100.0)*16.0)+4.0;
	      end;

          2 : begin
		ival := sixb21_readsp_binary(effective_address(mod_address));
		if range=48 then
		  rval := (ival/4096)*20.0;
		if range=49 then
		  rval := ((ival/4096)*16.0)+4.0;
	      end;


        end;                      {of case fmt}


    end else sixb_error_code := 12;
    sixb21_readsp_data := rval;

  end;

  {----------------------------------------------------------------------}

  procedure sixb21_write_data(mod_address:byte; datum:real);

  var
    idatum,range,fmt:integer;

  begin
    if module_map[mod_address].exists then
      begin
	range:=module_map[mod_address].range_code;
	fmt:=module_map[mod_address].format_code;
	case fmt of

	0: begin
	     sixb21_write_engr(effective_address(mod_address),datum);
	   end;

	1: begin
	    if range=48 then datum:=datum*0.2;
	    if range=49 then datum:=(datum-4.0)*(100.0/16.0);
	    sixb21_write_percent(effective_address(mod_address),datum);
	   end;

	2: begin
	    if range=48 then
	       begin
		 datum:=4096.0*(datum/20.0);
		 idatum:=trunc(datum);
	       end;
	    if range=49 then
	       begin
		 datum:=4096.0*((datum-4.0)/16.0);
		 idatum:=trunc(datum);
	       end;
	    sixb21_write_binary(effective_address(mod_address),idatum);
	    end;
	end; {case}
      end else sixb_error_code:=12;
    end;


  {-----------------------------------------------------------------------}

  {SIXB_CLRMAP empties the module map; used at power-up}


  procedure sixb_clrmap;

  var
    i : Integer;

  begin
    for i := 0 to 255 do
      begin
        module_map[i].range_code := 0;
        module_map[i].baud_rate_code := 6;
        module_map[i].format_code := 0;
        module_map[i].tint_code := 0;
        module_map[i].checksum := False;
        module_map[i].exists := False;
        module_map[i].cfgmode := False;
      end;
  end;

  {-----------------------------------------------------------------}

  {$I-}


  {SIXB_SAVEMAP saves the current module map to disk }


  procedure sixb_savemap(filename : string);

  var
    i : Integer;

  begin
    sixb_error_code := 0;

    Assign(module_file, filename);
    if IoResult = 0 then

      begin

        Rewrite(module_file);
        if IoResult = 0 then
          begin
            for i := 0 to 255 do Write(module_file, module_map[i]);

            if IoResult <> 0 then sixb_error_code := 10;

            Close(module_file);
            if IoResult <> 0 then sixb_error_code := 10;

          end
        else sixb_error_code := 10;

      end
    else sixb_error_code := 10;

  end;


  {------------------------------------------------------------------------}



  {SIXB_LOADMAP loads the module map from a disk file}


  procedure sixb_loadmap(filename : string);


  var
    i : Integer;

  begin
    if file_exists(filename) then

      begin

        Assign(module_file, filename);
        if IoResult = 0 then

          begin

            Reset(module_file);
            if IoResult = 0 then
              begin

                for i := 0 to 255 do Read(module_file, module_map[i]);

                if IoResult <> 0 then sixb_error_code := 10;

                Close(module_file);
                if IoResult <> 0 then sixb_error_code := 10;

              end
            else sixb_error_code := 10;

          end
        else sixb_error_code := 10;

      end
    else sixb_error_code := 10;


  end;


  {$I+}


  {----------------------------------------------------------------------}

function sixb_configured_module:integer;

    {searches the module map to see if any modules are being operated under
    the config mode, and returns their configured address; 256 returned if no
    config'd module exists}

var
   i:integer;

begin
     sixb_configured_module := 256;
     for i := 0 to 255 do
     begin
          if module_map[i].cfgmode then sixb_configured_module := i;
     end;
end;



  {----------------------------------------------------------------------}


{procedure SIXB_SEARCH_ONE searches for a module at a specified address
and, if found, loads the corresponding module_map entry with the appropriate
parameters}


  procedure sixb_search_one(mod_address : Byte; system_baud_rate : Byte);

  var
    response_delay_temp,i : Integer;
    range_code, baud_rate_code, address_code, mscl_code : Byte;

  begin
    checksum_enabled := True;    {start by assuming checksum disabled}
    module_map[mod_address].exists := false;  {and assume no module}

        {try to read status from the module, assuming no checksum}


    sixb_read_status(mod_address, address_code, range_code,
                     baud_rate_code, mscl_code);


    {perhaps the module has checksum enabled....}

    if sixb_error_code > 0 then
      begin
        checksum_enabled := False;
        sixb_read_status(mod_address, address_code, range_code,
                         baud_rate_code, mscl_code);
      end;

    if sixb_error_code = 0 then
      begin

            {We found one! First, let us load the appropriate
            map components from the returned parameters}

        module_map[address_code].exists := True;
        module_map[address_code].range_code := range_code;
        module_map[address_code].baud_rate_code := baud_rate_code;
        module_map[address_code].format_code := mscl_code and 3;
        if (mscl_code and 128)=128 then
                      module_map[address_code].tint_code := 1
                 else module_map[address_code].tint_code := 0;
	module_map[address_code].slew_code := ((mscl_code and $3C) shr 2);
	module_map[address_code].cfgmode := false;  {assume this initially}

        if (mscl_code and 64) = 64 then
          module_map[address_code].checksum := True
        else module_map[address_code].checksum := False;

            {now that we have found one, we need to see if this
            module is being operated with the config mode enabled.
            If config is enabled, the module will be operating at
            9600 baud, address 0. If all of this is true and the status
            command indicates a nonzero address, we know that the module
            MUST be operating under config mode.

            If the module responds to 9600 baud and address 0,
            but shows a zero address in the status string, it MAY be
            operating under config mode. We can attempt to alter the checksum
            status to see if the module barfs; if the module responds with
            an error code of 2, it is NOT being operated under config.}

     if (mod_address=0) and (address_code>0) then
	 begin
	   module_map[address_code].cfgmode := true;
	   cfg_natural_address:=address_code;
	 end;

               {if config'd address and response address differ, the module
               MUST be operating under the config mode}


     if (mod_address=0) and (address_code=0) and (system_baud_rate=6) then
        begin


            response_delay_temp := response_delay;
            response_delay := 400;
            sixb_send_config( 0, 0, range_code,
                              baud_rate_code, mscl_code xor $40);

            if (sixb_error_code>0) then

              begin
                 module_map[address_code].cfgmode := False;
                 sixb_error_code:=0;
              end
            else

              begin               {restore the module}
                sixb_send_config(mod_address, address_code,
                                 range_code, baud_rate_code,
                                 mscl_code);
                module_map[address_code].cfgmode := True;
		cfg_natural_address := address_code;
	      end;

           response_delay := response_delay_temp;

         end;
      end else  sixb_error_code := 5;    {no module found}

  end;








  {------------------------------------------------------------------------}

  {procedure SIXB_SEARCH_ALL searches for all possible modules on a specified
  comm port, at a specified baud rate, and fills the MODULE_MAP with the
  aquired information. If no modules are found, global boolean variable
  NO_MODULES_FOUND will be set true.}

  procedure sixb_search_all(baud_rate_code : Byte);

  var
    i : Integer;
    found_one : Boolean;
    config_module : byte;

  begin
    sixb_clrmap;
    found_one := False;
      begin
          sixb_search_one(0,baud_rate_code);
          for i := 1 to 255 do
          if sixb_configured_module<>i then
          begin
            sixb_search_one(i, baud_rate_code);
            if module_map[i].exists = True then found_one := True;
          end;
      end;
    no_modules_found := not (found_one);
  end;









begin

 sixb_clrmap;
end.
