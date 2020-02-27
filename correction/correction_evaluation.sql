#1

from re import sub

nuancier = ''
nuancier += 'code libellé ordre définition'

def r_names(nuancier):
	x=nuancier.replace(' ', '_')
    x1= sub('[é,é]' ,  'e', x)
	x2 = sub('[(,)]' , '' , x1)
    x3= x2.split()
    return x3
print (r_names(nuancier))

x3=r_names(nuancier)


#2 

def parse_date(x):
	for i in range (0, len(x)) :
	if x[i] [0:4] == 'Date' :
		return x[i].split()
print(parse_date(x))        

#3

create database

#6
municpal = r_names(municipaux)
nuances = r_names(nuances)
ville = r_names(ville)
ref =  r_names(ref)
pop = r_names(pop)
dep = r_names(dep)

print( 'elus =' , municipal, '\n\n', 'nuancier = ', nuances, '\n\n' , 'villes = ', cille, \n\n', 'categorie=', ref, '\n\n' ,
'population=', pop, '\n\n' , 'departements=' , dep') 

def chargement (s, path, table):
	name_cols= r_names(s)
	df = pd.read_excel(path, delimiter = 'l' , skiprowq = [0,1], names= name_cols, parse_dates = parse_dates(s))
    df.to_sql(table, con=engine, if_exists='append', index= False)
    return print ('tableau', table, 'has been filled')
    
 chargement(municipaux, path_eval+'elus_mun2014.xlsx' , 'elus')
 chargement(nuances_pol, path_eval + 'codes nuances.xlsx', 'nuancier')
 chargement(villes, path_eval + 'cities.xlsx', 'villes')
 chargement(ref_geo commune, path_eval + 'categorie_proffessionnelles.xlsx', 'categorie')
 chargement(population_commune, path_eval + 'population2017.xlsx', 'population')
 chargement(departements, path_eval + 'departements.xlsx', 'departement')

#9

select nom, prenom, date de naissance
inner join villes on elus.code insee = ville. code insee
inner join departments on villes.department_code = departments.code
where departments.name = 'var' and month(date de naissance) between 06 and 08;


#10

select  sexe, nom, 	avg(TIMESTAMPDIFF(year, date de naissance, "2014-01-01")) 
from elus group by sexe ;

#13

create index idx_elus on elus (code_insee);
create index idx_elusnuancier on elus (nuancedelaliste) 

select count(nom) as  nom, nombre_elus, departement.name, nuancier.libelle
from elus
join villes
on elus.codeinsee = villes.code_insee
join departements
on departements.code = villes.departement_code
join nuancier
on elus.codenuance= nuancier.code
group by nuancier.libelle, department.name;



#14


select nuancier.libelle, departments.name, ville.name, count(nom) as nb_elus
from elus
join villes
on elus.codeinsee=ville.codeinsee
join nuancier
on nuancier.code = elus.code_nuancierdelaliste
where departmentw.name = 'Bouches-du-Rhones'
group by nuancier(liblle), villes.name;

#15

select count(sexe)  as nb-elus, d.name, departement_code as num_departement from elus as e
inner join villes as v on e.code_insee = v.code_insee and sexe = 'f'
inner join departement as d on v.departements_code = d.code
group by department_code
order by nb_delus desc limit 10


#16

select AVG(2013 - year(date de naissance) as age, department.name
FROM ELUS
inner join villes on elus.codeinsee - villes.codeinsee
innernoin departments on villes.departementcode = department.code

group by department_name
order by age_moyen desc  ; 

#17

selct avg(2019 - year(date de naissance)) as age, date de naissance, department-code
from elus
inner join villes on elus.code_insee = villes.code_insee
group by department_code
HAVING AVG(AGE) < 54 
ORDER BY AGE
;