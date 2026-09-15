set serveroutput on

declare 
	a number:=&a;
	b number:=&b;
	c number;

BEGIN 
	c:=a/b;
exception

	when ZERO_DiVIDE THEN
		DBMS_OUTPUT.PUT_LINE('cant divide bo with 0'||sqlerrm);
	end;
	/