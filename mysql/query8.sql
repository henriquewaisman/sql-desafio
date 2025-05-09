select distinct cid.nome as cidade, 
count(cliend.idcliente) as qtd_clientes
from cidade cid
join clienteendereco cliend
on cid.id = cliend.idcidade
group by cid.nome
having count(cliend.idcliente) > 5;
