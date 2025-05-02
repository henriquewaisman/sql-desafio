select emp.codempresa
from gen_empresa emp
join gen_cidade cid
on cid.codcidade = emp.codcidade
left join pedidotreinamento ped 
on ped.codempresa = emp.codempresa
and extract(year from ped.datemissao) = 2024
where cid.coduf = 'RJ' and emp.idtsituacao = 'A'
group by emp.codempresa
having count(ped.datemissao) = 0;
