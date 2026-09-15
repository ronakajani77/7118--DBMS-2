DECLARE
    v_a NUMBER := &first_number;
    v_b NUMBER := &second_number;
    v_result NUMBER;

BEGIN
    v_result := v_a / v_b;

    DBMS_OUTPUT.PUT_LINE('Result = ' || v_result);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Cannot divide by zero.');
END;
/	