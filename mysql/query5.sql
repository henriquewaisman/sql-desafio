select distinct cli.nome as cliente, cid.nome as cidade
from cliente cli
join clienteendereco cliend
on cli.id = cliend.idcliente
join cidade cid
on cid.id = cliend.idcidade;
