select cid.coduf, count(1)
from gen_empresa emp
join gen_cidade cid
on emp.codcidade = cid.codcidade
group by cid.coduf;
