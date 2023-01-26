/*5-Quais foram os abates mais rápidos de cada time e contra quem?*/

USE db_Projeto_4;

SELECT * FROM kills;

Select Time, Killer, Victim 
from kills 
where Killer like '%SKT%' 
order by time asc limit 10;