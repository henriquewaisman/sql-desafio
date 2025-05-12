select uf.id as uf,
cid.nome as cidade,
tra.nome as transportadora,
enc.valorfrete as frete
from encomenda enc
join transportadora tra
on enc.idtransportadora = tra.id
join clienteendereco cliend
on cliend.id = enc.idcliente
join cidade cid
on cid.id = cliend.idcidade
join uf
on uf.id = cid.iduf
where extract(year from datacadastro) between 2024 and 2025;
