select cli.nome as cliente,
count(enc.id) as qtd_encomendas
from cliente cli
join encomenda enc
on cli.id = enc.idcliente
group by cli.nome
having count(enc.id) > 1;
