select unique_id, name 
from Employees
left join EmployeeUNI ON Employees.id = EmployeeUNI.id