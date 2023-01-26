/*3- Quais os 5 jogadores de cada time que mais sofreram abates?*/

USE db_Projeto_4;

SELECT * FROM kills;

select Victim, count(Victim) 
from kills 
where Victim like '%SKT%'
group by Victim order by count(Victim) desc limit 5;