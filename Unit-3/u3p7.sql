DECLARE
    v_num NUMBER;

BEGIN
    v_num := TO_NUMBER('&value');

    DBMS_OUTPUT.PUT_LINE('Number is: ' || v_num);

EXCEPTION
    WHEN INVALID_NUMBER THEN
        DBMS_OUTPUT.PUT_LINE('Invalid number entered.');
END;
/