select uf.id as uf,
sum(enc.valorfrete) as frete_total
from encomenda enc
join clienteendereco cliend
on enc.idcliente = cliend.idcliente
join cidade cid
on cid.id = cliend.idcidade
join uf
on uf.id = cid.iduf
group by uf.id
order by sum(enc.valorfrete) desc;
