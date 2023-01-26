/*2- Quais os 10 jogadores com mais abates no total?*/

USE db_Projeto_4;

SELECT * FROM kills;

select Killer, count(killer) 
from kills 
group by killer 
order by count(Killer) desc limit 10;