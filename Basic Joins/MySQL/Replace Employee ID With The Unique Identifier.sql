select eu.unique_id , es.name 
  from Employees es left outer join  EmployeeUNI eu
on eu.id=es.id 
