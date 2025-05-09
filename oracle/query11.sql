select forn.nomfantasia as fornecedor,
sum(itm.qtdprodutopedido) as qtd_fornecida
from gen_fornecedor forn
join pedidotreinamento ped
on forn.codfornecedor = ped.codfornecedor
join pedidotreinamentoitem itm
on ped.numpedido = itm.numpedido
group by forn.nomfantasia;
