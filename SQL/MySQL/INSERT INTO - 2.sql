SELECT
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;

insert into dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
)

values
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);