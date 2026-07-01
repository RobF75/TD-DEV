<%
Sub FlemOpenConnection
  if Session("FlemConn").State = 0 then
    Session("FlemConn").Open Session("FlemConnStr")
  end if
End Sub

Sub FlemCloseConnection
  if Session("FlemConn").State > 0 then
    Session("FlemConn").Close
  end if
End Sub

Sub WorkOpenConnection
  if Session("WorkConn").State = 0 then
    Session("WorkConn").Open Session("WorkConnStr")
  end if
End Sub

Sub WorkCloseConnection
  if Session("WorkConn").State > 0 then
    Session("WorkConn").Close
  end if
End Sub

Sub UsersOpenConnection
  if Session("FlemUsers").State = 0 then
    Session("FlemUsers").Open Session("FlemUsersStr")
  end if
End Sub

Sub UsersCloseConnection
  if Session("FlemUsers").State > 0 then
    Session("FlemUsers").Close
  end if
End Sub

Sub WaterOpenConnection
  if Session("WaterConn").State = 0 then
    Session("WaterConn").Open Session("WaterConnStr")
  end if
End Sub

Sub WaterCloseConnection
  if Session("WaterConn").State > 0 then
    Session("WaterConn").Close
  end if
End Sub
%>