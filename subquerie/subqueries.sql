-- display  the ssn and  last name for employees who work in the same department  that employee named 'walid '
select employee_id,last_name
from employees
where department_id =(select department_id from employees where first_name='Walid')


---display the employee_id  and last_name for the employee who  got  the maximum salary value 
select employee_id,last_name 
from employees 
where salary=(select max(salary) from employees)


-- multirow subquerie
--for all manager display  list of their deparmtment_id and name
select employee_id ,last_name
from employees 
where employee_id in ( select manager_id from departments)

--display dep_no and name for any department where of their manager salary more than 2000
select department_id,department_name 
from departments 
where manager_id in (select employee_id from employees where salary >2000)

--subquerei in from statament 
---for all manager display  a list of  last_name ,first_name ,managed department 
select last_name, first_name ,department_id 
from employees e ,(select * from departments) sub
where e.employee_id =sub.manager_id

--- display alist of department name  and number of working employees in each department 
select department_name , (select count(*) from employees where departments.department_id =department_id)
from departments





