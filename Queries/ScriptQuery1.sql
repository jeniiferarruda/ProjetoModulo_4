/*1- Quais os 5 jogadores de cada time com mais abates?*/

USE db_Projeto_4;

SELECT * FROM kills;

select Killer, count(killer) 
from kills 
where killer like '%SKT%' 
group by killer 
order by count(Killer) desc limit 5;