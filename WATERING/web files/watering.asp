<%@ Language="VBScript" %>
<% option explicit
response.write("<meta http-equiv=""refresh"" content=""10"">")
 %>
<%
Response.Expires = 0
Response.AddHeader "cache-control", "no-cache"
%>
<!-- #include file="sql_funcs.inc" -->
<head><meta name = "viewport" content = "initial-scale = 1.0"></head>
<%
'FlemOpenConnection
Dim rs, sql
dim fs,f,ts,sState
'Dim LateArrivals, JobLoads, JobPickups, JobLateArrivals, JobGrowers, JobShortages,JobPotCount,JobPotLocChange,JobWasher,JobChecker,JobLoader,JobTickets, JobWatering


if len(Request("submit")) > 0 then
	set fs=Server.CreateObject("Scripting.FileSystemObject")
	set f=fs.CreateTextFile("c:\water\WaterControl.txt",true)
	if Request("submit")= "Stop Watering" then
		f.WriteLine("STOP")
		f.Close
	else if Request("submit")= "Start Watering" then
		f.WriteLine("START")
		f.Close
	end if
	Set f=Nothing
	Set fs=Nothing
end if
end if

'GetJobAssigned Request.Cookies("LoginID"),JobLoads,JobPickups,JobLateArrivals,JobGrowers,JobShortages,JobPotCount,JobPotLocChange,JobWasher,JobChecker,JobLoader,JobTickets, JobWatering

'If NOT JobWatering then
    'Response.Write(JobWatering)
'    Response.Redirect "bareroot.asp"
'End If

set rs=Server.CreateObject("ADODB.Recordset")

'Response.Write(Request.Cookies("LoginName")&" - "&GetJobString(JobLoads,JobPickups,JobLateArrivals,JobGrowers,JobShortages,JobPotCount,JobPotLocChange,JobTickets,JobChecker,JobLoader,JobWasher, JobWatering)&".")

'Response.write(" <a href=""messages.asp?ref="&Server.URLEncode("Watering.asp")&""">")
'if CheckForNewMail(Request.Cookies("LoginID")) then
'  Response.write("*")
'end if
'Response.write("MSG</a>")
'Response.write("<br />")

'FlemCloseConnection
WaterOpenConnection

Response.write("<form name=""Watering"" method=""post"" action=""watering.asp"">")

response.write("<a href=""Watering.asp"">Refresh</a>&nbsp;&nbsp;<a href=""http://hh.factree.com.au/water.asp"">Home</a><br />")
Response.write("<br /><b>Watering State: </b>")
set fs=Server.CreateObject("Scripting.FileSystemObject")
'Set f=fs.OpenTextFile("c:\water\wateringstate.txt",1,false)
Set f=fs.OpenTextFile("c:\water\wateringstate.txt",1)
'Set ts=f.OpenAsTextStream(ForReading)
sState=f.Read(15)
Response.write(sState&"<br />")
f.Close
Set f=Nothing
Set fs=Nothing

if sState = "ACTIVE" then
	response.write("<input name=""submit"" type=""submit"" value=""Stop Watering"" />")
else
	response.write("<input name=""submit"" type=""submit"" value=""Start Watering"" />")
end if	

sql=""
sql=sql&"select "
sql=sql&"  Program_no, "
sql=sql&"  Prog_desc, "
sql=sql&"  prog_status, "
sql=sql&"  prog_next_dt "
sql=sql&"from "
sql=sql&"  program "
sql=sql&"order by "
sql=sql&"  prog_status, prog_next_dt"

rs.open sql,Session("WaterConn")
if rs.eof then
  Response.write("There is a problem.<br /><br />")
else
  Response.Write("<table>")
  Response.Write("<tr>")
  Response.Write("<th><font size=""1"">Program</font></th>")
  Response.Write("<th><font size=""1"">Detail</font></th>")
  Response.Write("<th><font size=""1"">Status</font></th>")
  Response.Write("<th><font size=""1"">Start Date</font></th>")
  Response.Write("<th><font size=""1"">Time</font></th>")
  Response.Write("</tr>")
  do while not rs.eof
    Response.Write("<tr>")
    Response.Write("<td valign=""top""><a href=""Water_Program_Detail.asp?Prog_id="&rs("program_no")&""">Details</a></td>")
    Response.Write("<td valign=""top""><font size=""2"">"&rs("prog_desc")&"</font></td>")
    Response.Write("<td valign=""top""><font size=""2"">"&rs("Prog_status")&"</font></td>")
    Response.Write("<td valign=""top"">"&Day(rs("prog_next_dt"))&"/"&Month(rs("prog_next_dt"))&"/"&Year(rs("prog_next_dt"))&"</td>")
    Response.Write("<td valign=""top"">"&hour(rs("prog_next_dt"))&":"&minute(rs("prog_next_dt"))&"</td>")
    Response.Write("</tr>")
    rs.movenext
  loop
  Response.Write("</table>")
end if
rs.close
set rs=nothing
response.write("</form>")

'WaterCloseConnection
%>