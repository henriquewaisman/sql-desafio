select cli.nome as cliente,
cliend.nomerua as rua
from cliente cli
join clienteendereco cliend
on cli.id = cliend.idcliente
where cliend.nomerua like '%sol%' or cliend.nomerua like '%nova%';
