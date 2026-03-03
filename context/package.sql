
  CREATE OR REPLACE PACKAGE CORE_REP is

-- Author  : Mardonbek Sobirov
-- Created : 03.03.2026 9:09:25
-- Purpose : For create session to REP_ENV
   
  V_TOTAL  CONSTANT INTEGER := 1000000;
  
  Date_Begin Varchar2(20); 
  Date_End   Varchar2(20); 
  Brcd       Varchar2(4); 
   
  Procedure Set_Session(i_key varchar2, i_value varchar2);
  
  Procedure Clear_Context;
  
  Procedure Set_Date_Begin(i_value varchar2); 
  Function Get_Date_Begin return Varchar2;
  
  Procedure Set_Date_End(i_value varchar2);
  Function Get_Date_End  return Varchar2; 
  
  Procedure Set_Brcd(i_value varchar2);
  Function Get_Brcd return Varchar2;
  
  Function Get_Time return date;
  
  Function Get_Set_Text (i_value clob) return clob;
  
end Core_Rep;

CREATE OR REPLACE PACKAGE BODY CORE_REP is

  --Creating session
Procedure Set_Session(i_key varchar2, i_value varchar2) is
  begin
  
    dbms_session.set_context(namespace => 'REP_ENV',
                             attribute => i_key,
                             value     => i_value);


End Set_Session;
--------------------=============================------------------------------
 
Procedure Clear_Context is
  
Begin
  Dbms_Session.clear_context(namespace => 'REP_ENV');
End Clear_Context;
--------------------=============================------------------------------ 

Procedure Set_Date_Begin(i_value varchar2)
  is
Begin
    Date_Begin := i_value;
End Set_Date_Begin;
 
--------------------=============================------------------------------
Function Get_Date_Begin 
  return Varchar2
  is
Begin
    return Date_Begin;
End Get_Date_Begin;
--------------------=============================------------------------------ 

Procedure Set_Date_End(i_value varchar2)
  is
Begin
    Date_End := i_value;
End Set_Date_End; 
--------------------=============================------------------------------
Function Get_Date_End 
  return Varchar2
  is
Begin
    return Date_End;
End Get_Date_End;
--------------------=============================------------------------------ 
Procedure Set_Brcd(i_value varchar2)
  is
Begin
    Brcd := i_value;
End Set_Brcd; 
--------------------=============================------------------------------
Function Get_Brcd 
  return Varchar2
  is
Begin
    return Brcd;
End Get_Brcd;
--------------------=============================------------------------------
Function Get_Time
  return date
  is
Begin
    return sysdate;
End Get_Time;
--------------------=============================------------------------------
Procedure Set_Text(i_value clob)
  is
BEGIN
  
  Text := i_value;
 
End Set_Text;
--------------------=============================------------------------------
Function Get_Text
  return clob
  is
Begin
    return Text;
End Get_Text;
--------------------=============================------------------------------
Function Get_Set_Text (i_value clob)
  return clob
  is
Begin
    Text := i_value;    

    return Text;
End Get_Set_Text;


End Core_Rep;
