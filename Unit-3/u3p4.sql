Set serveroutput on;

Declare 
	v_salary Employee.salary%Type;
BEGIN
	SELECT SALARY
	INTO V_SALARY
	FROM EMPLOYEE
	WHERE AGE = 50;

	DBMS_OUTPUT.PUT_LINE('Salary =' || V_SALARY);

	EXCEPTTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('No employee found with age 50.');
		WHEN TOO_MANY_ROWS THEN
			DBMS_OUTPUT.PUT_LINE('More then one employee 50 years old.');
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
	END;
	/
		