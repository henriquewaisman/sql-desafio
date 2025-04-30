select distinct emp.codabreviacao as EMPRESA, 
cid.dsccidade as CIDADE,
cid.coduf as UF
from gen_empresa emp
join gen_cidade cid
on emp.codcidade = cid.codcidade
where emp.idtsituacao = 'A';
