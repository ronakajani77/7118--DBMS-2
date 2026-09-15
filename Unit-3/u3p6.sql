DECLARE
    v_name emp.ename%TYPE;

BEGIN
    SELECT ename
    INTO v_name
    FROM emp
    WHERE empno = &emp_no;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found for the given EMPNO.');
END;
/