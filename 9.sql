use examen ;

# 9 : departement : name /  elus : date de naissance / cities 

select departements.region_code, elus_mun2014.date_de_naissance, elus_mun2014.nom
from departements join cities 
on departements.region_code = cities.department_code
join elus_mun2014
on elus_mun2014.code_insee = cities.insee_code

ORDER BY elus_mun2014.date_de_naissance between 'AAAA-06-JJ' AND 'AAAA-08-JJ'