/*7- Quais foram os campeões mais banidos no primeiro ban do lado vermelho do mapa?*/

USE db_Projeto_4;

SELECT * FROM bans;

select Team, ban_1, count(ban_1) 
from bans 
where Team like '%red%' 
group by ban_1 order by count(ban_1) desc limit 5;