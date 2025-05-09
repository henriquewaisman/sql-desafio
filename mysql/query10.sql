select 
rank() over (order by count(enc.idcliente) desc) as ranking,
cli.nome as cliente,
count(enc.idcliente) as qtd_pedido
from cliente cli
join encomenda enc
on cli.id = enc.idcliente
group by cli.nome
order by count(enc.idcliente) desc
limit 10;
