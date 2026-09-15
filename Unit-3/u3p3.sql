set serveroutput on 
declare 
	res number(3);
	n number(3);
begin 
	n:=&n;
	if n=0 then
		RAISE_APPLICATION_ERROR(-20230,'YOU CANT NOT DIVIDE ANY NUMBER WITH ZERO');

ELSE
	SELECT 100/n INTO res from dual;
	dbms_output.put_line(res);
	
	end if;
	END ;
	/