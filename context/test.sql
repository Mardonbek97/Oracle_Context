begin
  core_rep.Set_Session('a', 5);
  core_rep.Set_Session('b', 'c');
end;
/

Select sys_context('REP_ENV', 'a'),
       sys_context('REP_ENV', 'b')  
 from dual;
 
begin
  core_rep.Clear_Context;
end;
/
 
Select sys_context('REP_ENV', 'a'),
       sys_context('REP_ENV', 'b')  
 from dual;
