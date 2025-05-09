select ped.numpedido as numero_pedido,
emp.nomfantasia as empresa,
ped.datemissao as data_emissao,
sum(itm.qtdprodutopedido) as qtd_itens,
sum(itm.qtdprodutopedido * itm.valprodutopedido) as valor_total
from pedidotreinamento ped
join gen_empresa emp
on ped.codempresa = emp.codempresa
join pedidotreinamentoitem itm
on ped.numpedido = itm.numpedido
group by ped.numpedido, emp.nomfantasia, ped.datemissao;
