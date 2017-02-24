INSERT INTO table2
SELECT * FROM table1;

INSERT INTO table2
(column_name(s))
SELECT column_name(s)
FROM table1;


-- iNSERINDO APROVADORES 

insert into ALTCTRPRUPROF 
select 
	(select max(CODCTRPRUPROF) from ALTCTRPRUPROF) +  row_number() OVER (ORDER BY CODPROF), 
	'201612131216490000000000001285' as chaveproc, 
	CODPROF, 
	0 as statusaprova, 
	0 as envioemail, 
	1 as apaga,
	row_number() OVER (ORDER BY CODPROF) as sequenciaaprovadores,
	1 as pagado, 
	0 as fluxo, 
	null as chavedesp,
	0 as codfaswf, 
	0 as aprovadoratual
from 
	ALTPROF 
where 
	CODPROF IN(97,28,218,108,249)

