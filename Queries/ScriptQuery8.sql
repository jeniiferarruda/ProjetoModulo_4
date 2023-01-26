/*8- Quantos jogos cada time ganhou do lado azul do mapa no ano e em qual campeonato?*/

USE db_Projeto_4;

SELECT * FROM matchinfo;

select League, Year, blueTeamTag, count(bResult) 
from matchinfo 
where year = 2015 and blueTeamTag = 'SKT' and League = 'LCK';