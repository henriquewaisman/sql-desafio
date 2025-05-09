select 
rank() over (order by sum(enc.valorfrete) desc) as ranking,
tra.nome as transportadora,
sum(enc.valorfrete) as valor_total
from transportadora tra
join encomenda enc
on tra.id = enc.idtransportadora
group by tra.nome
order by sum(enc.valorfrete) desc;
