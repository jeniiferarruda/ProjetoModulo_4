Objetivo

montar um dashboard com base no conjunto de dados escolhidos pelo squad.

Principais perguntas:
Código no mysql
Quais Jogadores do Time Coreano SKT que mais eliminaram?

USE db_Projeto_4;

SELECT * FROM kills;

select Killer, count(killer)
from kills
where kills like '%STF%'
group by killer
order by count(killer) desc limit 5
Quais os 10 jogadores com mais abates no total?

 USE db_Projeto_4;

 SELECT * FROM kills;

 select Killer, count(killer)
 from kills
 group by killer
 order by count(killer) desc limit 10;
Quais os 5 jogadores de cada time que mais sofreram abates?

 USE db_Projeto_4;

 SELECT * FROM kills;

 select Victim, count(Victim)
 from kills
 where Victim like '%SKT%
 order by count(killer) desc limit 10;
Quais os 10 jogadores que mais sofreram abates no total?

 USE db_Projeto_4;

 SELECT * FROM kills;

 select Victim, count(Victim)
 from kills
 order by Victim count(Victim) desc limit 10;
Quais foram os abates mais rápidos de cada time e contra quem?

 USE db_Projeto_4;

 SELECT * FROM kills;

 select  Time, Killer, Victim
 from kills
 where Killer like '%SKT%'
 order by time asc limit 10;
Quais foram os campeões mais banidos no lado azul do mapa?

USE db_Projeto_4;

SELECT * FROM bans;

select  Team, ban_1, count(ban_1)
from bans
where Team like '%blue%'
group by ban_1 order by count(ban_1) desc limit 5;
Quais foram os campeões mais banidos no mapa do lado vermelho?]

 USE db_Projeto_4;

 SELECT * FROM bans;

 select  Team, ban_1, count(ban_1)
 from bans
 where Team like '%red%'
 group by ban_1 order by count(ban_1) desc limit 5;
Quantos Jogos cada time jogou do lado vermelho do mapa, e em que campeonato e ano?

USE db_Projeto_4;

SELECT * FROM matchinfo;

select  League, Year, blueTeamTag, count(bResult)
from matchinfo
where blueTeamTag = 'SKT' and year = 2015
group by League;
Quantos Jogos cada time jogou do lado azul do mapa, e em que campeonato e ano?
 USE db_Projeto_4;

 SELECT * FROM matchinfo;

 select  League, Year, blueTeamTag, count(bResult)
 from matchinfo
 where blueTeamTag = 'SKT' and year = 2015
 group by League;
Quantos monstros foram abatidos?
 USE db_Projeto_4;

 SELECT * FROM monsters;

 select  Type, count(Type) from monsters group by Type order by count(Type) desc;
Feramentas Utilizadas:

Workbench MySQL
Power Bi
VisualCode
Canva
Instruções para importação e uso do banco de dados:
Baixe os arquivos do repositório git;
Abra o Xampp e execute os seguintes códigos;
msql -u root -e ‘create database db_projeto_4’
msql -u root db_projeto_4 <local do arquivo/bdtabelasLOL.sql>
mysql -u root -e ‘use db_projeto_4; show tables’
se aparecer 7 tabelas o procedimento de importação foi correto.
Abra o MySQL Workbench e estabeleça uma conexão e execute os seguintes códigos:
use db_projeto_4;
Após esses procedimentos é possível executar as querys já existentes no repositório GIT.
Direitos Autorais: Camille Soares, Eduardo Fernando, Ana Caroline, Jenifer Arruda e João Vitor.
