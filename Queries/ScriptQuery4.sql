/*4- Quais os 10 jogadores que mais sofreram abates no total?*/

USE db_Projeto_4;

SELECT * FROM kills;

select Victim, count(Victim) 
from kills 
group by Victim order by count(Victim) desc limit 10;