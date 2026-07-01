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

Dim rs, sql, ProgId
Response.write("<br /><b>Watering Program Detail</b><br />")

WaterOpenConnection
set rs=Server.CreateObject("ADODB.Recordset")
response.write("<a href=""Water_Program_Detail.asp"">Refresh</a>&nbsp;&nbsp;<a href=""watering.asp"">Back</a><br />")
Response.write("<br /><b>Program_Detail</b><br />")

If len(Request.Querystring("Prog_Id")) > 0 then
    Session("ProgId") = Request.Querystring("Prog_Id")
end if

    'ProgId = Request.Querystring("Prog_Id")

sql=""
sql=sql&"select "
sql=sql&"  Program_no, "
sql=sql&"  station_desc, "
sql=sql&"  station_status, "
sql=sql&"  watered_sec, "
sql=sql&"  crnt_water_sec "
sql=sql&"from "
sql=sql&"  prog_stations ps, "
sql=sql&"  station s "
sql=sql&"where "
sql=sql&"  ps.station_no = s.station_no and "
sql=sql&"  program_no = "&Session("ProgId")
sql=sql&" order by "
sql=sql&"  station_status, water_seq_no"

rs.open sql,Session("WaterConn")
if rs.eof then
  Response.write("There is a problem.<br /><br />")
else
  Response.Write("<table>")
  Response.Write("<tr>")
  Response.Write("<th><font size=""1"">Detail</font></th>")
  Response.Write("<th><font size=""1"">Program</font></th>")
  Response.Write("<th><font size=""1"">Status</font></th>")
  Response.Write("<th><font size=""1"">Watering Time</font></th>")
  Response.Write("<th><font size=""1"">Watered Time</font></th>")
  Response.Write("</tr>")
  do while not rs.eof
    Response.Write("<tr>")
    Response.Write("<td valign=""top""><a href=""Water_Program_Detail.asp?Prog_id="&rs("program_no")&""">Details</a></td>")
    Response.Write("<td valign=""top""><font size=""1"">"&rs("station_desc")&"</font></td>")
    Response.Write("<td valign=""top""><font size=""1"">"&rs("station_status")&"</font></td>")
    Response.Write("<td valign=""top""><font size=""1"">"&rs("crnt_water_sec")&"</font></td>")
    Response.Write("<td valign=""top""><font size=""1"">"&rs("watered_sec")&"</font></td>")
    'Response.Write("<td valign=""top"">"&hour(rs("prog_next_dt"))&":"&mminute(rs("prog_next_dt"))&"</td>")
    Response.Write("</tr>")
    rs.movenext
  loop
  Response.Write("</table>")
end if
rs.close
set rs=nothing

WaterCloseConnection
%>