select uf.nome as uf,
count(clienteendereco.idcliente) as qtd_clientes
from clienteendereco
join cidade
on cidade.id = clienteendereco.idcidade
join uf
on uf.id = cidade.iduf
where uf.id = 'ES' or uf.id = 'RJ' or uf.id = 'SC'
group by uf.nome
order by qtd_clientes desc;
