SET SERVEROUTPUT ON;

DECLARE
    l_code NUMBER;
    r_customer customers%ROWTYPE;
BEGIN
    SELECT * INTO r_customer FROM customers;

EXCEPTION
    WHEN OTHERS THEN
        l_code := SQLCODE;
        DBMS_OUTPUT.PUT_LINE('Error code: ' || l_code);
        DBMS_OUTPUT.PUT_LINE('Error message: ' || SQLERRM);
END;
/