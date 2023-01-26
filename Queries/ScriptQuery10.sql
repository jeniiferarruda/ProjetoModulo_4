/*10- Quantos monstros foram abatidos?*/

USE db_Projeto_4;

SELECT * FROM monsters;
select Type, count(Type) from monsters group by Type order by count(Type) desc;