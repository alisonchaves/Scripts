select (select max(CODWORKFLOWAPPROVERS) from WORKFLOWAPPROVERs) +  row_number() OVER (ORDER BY CODPROF), 'chaveproc', CODPROF, getdate(), null, 0 from ALTPROF where CODPROF IN(33,35,62,238,400,586,594,625,666,704,740)