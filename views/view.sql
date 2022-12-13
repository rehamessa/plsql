create or replace view  vw_accounting
as select employee_id ,last_name,job_id,department_name 
from employees,departments 
where employees.department_id =departments.department_id

-- to create complex querie
--can hide data that i dont want user to see it 
--filteration on of security mechanism
select * from vw_accounting
insert into vw_accounting values(999,'farid','IT_PROG',900);

---with check option to make constraint 
create or replace view  vw_accounting
as select employee_id ,last_name,job_id,department_name 
from employees,departments 
where employees.department_id =departments.department_id and job_id='IT_PROG'
with check option;