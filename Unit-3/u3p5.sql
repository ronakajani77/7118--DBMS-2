DECLARE
    CURSOR c_emp IS
        SELECT empno, ename, job, sal, deptno
        FROM emp
        WHERE deptno = &dept_no;

    v_count NUMBER := 0;

    NO_DEPT_FOUND EXCEPTION;

BEGIN
    FOR e IN c_emp LOOP

        INSERT INTO emp_backup(empno, ename, job, sal, deptno)
        VALUES(e.empno, e.ename, e.job, e.sal, e.deptno);

        v_count := v_count + 1;
    END LOOP;

    IF v_count = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE(v_count || ' employee record(s) inserted.');

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employees found for department ' || &dept_no);
END;
/