connect live sysadm dani;
set timeout 1;

store Remove_User
PROCEDURE: Remove_User Dynamic
  PARAMETERS
    String strUser_Name
    Receive Number Table_Authorizations
    Receive Number Column_Authorizations
    Receive Number Procedure_Authorizations
    Receive Number Function_Authorizations

  LOCAL VARIABLES
    Number nInd
    Sql Handle hSqlCur1
    Sql Handle hSqlCur2
    String strCommand

  ACTIONS
    On Procedure Startup
      Call SqlConnect(hSqlCur1)
      Call SqlConnect(hSqlCur2)
      Set Table_Authorizations = 0
      Set Column_Authorizations = 0
      Set Procedure_Authorizations = 0
      Set Function_Authorizations = 0

    On Procedure Execute

      Call SqlPrepareAndExecute(hSqlCur1, \
        'select distinct ''revoke all on '' || TCreator || ''.'' || TtName
|| '' from '' || Grantee \
          from SysTabAuth \
          where Grantee = @upper(:strUser_Name) \
          order by TCreator, TtName \
          into :strCommand')
      Call SqlFetchNext(hSqlCur1, nInd)
      While nInd = Fetch_Ok
        Call SqlPrepareAndExecute(hSqlCur2, strCommand)
        Set Table_Authorizations = Table_Authorizations + 1
        Call SqlFetchNext(hSqlCur1, nInd)
      If nInd != Fetch_EOF
        Return nInd


      Call SqlPrepareAndExecute(hSqlCur1, \
        'select distinct ''revoke update ('' || ColName || '') on '' || Creator || ''.'' || TName || '' from '' || Grantee \
          from SysColAuth \
          where Grantee = @upper(:strUser_Name) \
          order by Creator, TName, ColName \
          into :strCommand')
      Call SqlFetchNext(hSqlCur1, nInd)
      While nInd = Fetch_Ok
        Call SqlPrepareAndExecute(hSqlCur2, strCommand)
        Set Column_Authorizations = Column_Authorizations + 1
        Call SqlFetchNext(hSqlCur1, nInd)
      If nInd != Fetch_EOF
        Return nInd


      Call SqlPrepareAndExecute(hSqlCur1, \
        'select distinct ''revoke execute on procedure '' || Creator || ''.'' || Name || '' from '' || Grantee \
          from SysExecuteAuth \
          where Grantee = @upper(:strUser_Name) \
          order by Creator, Name \
          into :strCommand')
      Call SqlFetchNext(hSqlCur1, nInd)
      While nInd = Fetch_Ok
        Call SqlPrepareAndExecute(hSqlCur2, strCommand)
        Set Procedure_Authorizations = Procedure_Authorizations + 1
        Call SqlFetchNext(hSqlCur1, nInd)
      If nInd != Fetch_EOF
        Return nInd


      Call SqlPrepareAndExecute(hSqlCur1, \
        'select ''revoke execute on external function '' || Creator || ''."'' || Name || ''" from '' || Grantee \
          from SysObjAuth \
          where Grantee = @upper(:strUser_Name) and ObjAuth = ''E'' and ObjType = ''F'' \
          order by Creator, Name \
          into :strCommand')
      Call SqlFetchNext(hSqlCur1, nInd)
      While nInd = Fetch_Ok
        Call SqlPrepareAndExecute(hSqlCur2, strCommand)
        Set Function_Authorizations = Function_Authorizations + 1
        Call SqlFetchNext(hSqlCur1, nInd)
      If nInd != Fetch_EOF
        Return nInd

      Set strCommand = 'revoke connect from ' || strUser_Name
      Call SqlPrepareAndExecute(hSqlCur2, strCommand)

    On Procedure Close
      Call SqlDisconnect(hSqlCur1)
      Call SqlDisconnect(hSqlCur2);
commit;
------------------------
    Execute it as follows.  It will tell you how many authorizations have been removed when it is complete.  It does not do a commit, so you will need to do the commit after it is complete.
;
execute Remove_User
\
ZOEEC,0,0,0,0
/
commit;
