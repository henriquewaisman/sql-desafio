select enc.id as id_encomenda,
cli.nome as cliente,
tra.nome as transportadora, 
enc.valorfrete as frete
from encomenda enc
join cliente cli
on enc.idcliente = cli.id
join transportadora tra
on enc.idtransportadora = tra.id
where enc.valorfrete > 20
order by enc.id;
