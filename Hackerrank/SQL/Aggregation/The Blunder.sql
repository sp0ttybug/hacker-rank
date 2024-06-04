Select round(avg(salary))-round(avg(replace(salary, '0', ''))) from Employees;

-- OR

select ceil(avg(salary) - avg(to_number(replace(to_char(salary),'0')))) from employees;