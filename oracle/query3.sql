select distinct emp.codabreviacao, cid.dsccidade, cid.coduf
from gen_empresa emp
join gen_cidade cid
on emp.codcidade = cid.codcidade
where emp.idtsituacao = 'A';
