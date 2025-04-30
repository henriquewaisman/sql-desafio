select cid.coduf as UF,
count(1) as QTD_EMPRESAS
from gen_empresa emp
join gen_cidade cid
on emp.codcidade = cid.codcidade
group by cid.coduf;
