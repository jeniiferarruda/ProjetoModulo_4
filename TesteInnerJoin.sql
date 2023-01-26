Use db_Projeto_4;

select * from _columns;

SELECT bans.Team, bans.ban_1,
        kills.Time, kills.Killer, kills.Victim, 
        matchinfo.League, matchinfo.Year, matchinfo.blueTeamTag, matchinfo.bResult, matchinfo.rResult, matchinfo.redTeamTag
FROM bans 
INNER JOIN kills ON bans.Address = kills.Address
INNER JOIN matchinfo ON bans.Address = matchinfo.Address
where Address = 'http://matchhistory.na.leagueoflegends.com/en/#match-details/TRLH1/1002390223?gameHash=ec6e9d7a3ed5d7ae';

select * from matchinfo where League = 'WC' and year = 2017;

select * from matchinfo where Address = 'http://matchhistory.na.leagueoflegends.com/en/#match-details/TRLH1/1002390223?gameHash=ec6e9d7a3ed5d7ae';
