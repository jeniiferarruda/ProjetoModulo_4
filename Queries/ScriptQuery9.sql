/*9- Quantos jogos cada time jogou do lado azul do mapa no ano e em qual campeonato?*/

USE db_Projeto_4;

SELECT * FROM matchinfo;

select League, Year, blueTeamTag, count(bResult)
from matchinfo 
where blueTeamTag = 'SKT' and year = 2015 
group by League; 
