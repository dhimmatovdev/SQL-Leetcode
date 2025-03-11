select name, bonus 
from Employee left join bonus on Employee.empId = bonus.empId
where COALESCE(BONUS, 0)<1000;