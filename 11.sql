select departements.name, population2017.Population_légale_2017
from departements join cities 
on departements.region_code = cities.department_code
join population2017
on cities.insee_code = population2017.Code

where departements.name like '%Bouches%'