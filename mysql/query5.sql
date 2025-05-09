select enc.id as encomenda_id,
cli.id as cliente_id,
cli.nome as cliente, 
enc.idtransportadora,
enc.pedido, enc.notafiscal, 
enc.datacadastro, 
enc.situacao, 
enc.valorfrete
from encomenda enc
join cliente cli
on enc.idcliente = cli.id
left join clienteendereco cliend
on cli.id = cliend.idcliente
where cliend.id is null;
