INSERT INTO table2
SELECT * FROM table1;

INSERT INTO table2
(column_name(s))
SELECT column_name(s)
FROM table1;


-- iNSERINDO APROVADORES 

insert into Historico 
select 
	(select max(cod_Historico) from Historico) +  row_number() OVER (ORDER BY cod_Historico), 
	'201612131216490000000000001285' as cod_proncipal, 
	cod_Historico, 
	0 as status, 
	0 as enviado, 
	1 as apaga,
	row_number() OVER (ORDER BY cod_Historico) as seq_usuarios,
	1 as pagado, 
	0 as fluxo, 
	null as cod_Principal2,
	0 as fase, 
	0 as usuario_atual
from 
	Historico 
where 
	cod_Historico IN(97,28,218,108,249)

