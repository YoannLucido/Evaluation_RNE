use examen ;

select Ouvriers, name
from Departements join categorie_professionnelle
on Departements.code = categorie_professionnelle.Ouvriers

Order by Ouvriers desc limit 10
