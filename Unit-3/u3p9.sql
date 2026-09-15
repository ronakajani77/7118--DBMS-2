DECLARE
    v_comm emp.comm%TYPE;

    NULL_COMMISSION EXCEPTION;

BEGIN
    SELECT comm
    INTO v_comm
    FROM emp
    WHERE empno = &emp_no;

    IF v_comm IS NULL THEN
        RAISE NULL_COMMISSION;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Commission = ' || v_comm);

EXCEPTION
    WHEN NULL_COMMISSION THEN
        DBMS_OUTPUT.PUT_LINE('Commission is NULL for this employee.');

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

END;
/