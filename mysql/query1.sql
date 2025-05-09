select reg.nome, count(cid.iduf)
from cidade cid
join uf
on cid.iduf = uf.id
join regiao reg
on reg.id = uf.idregiao
group by uf.idregiao;
