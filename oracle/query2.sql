select count(1)
from pedidotreinamento ped
join pedidotreinamentoitem itm
on ped.numpedido = itm.numpedido
join gen_produtodescricao pdesc
on pdesc.codproduto = itm.codproduto
where (pdesc.dscdescricao like 'VID%' or pdesc.dscdescricao like 'RETROV%') and
ped.datemissao > '31/12/2023' and ped.datemissao < '01/04/2024'
group by extract(month from ped.datemissao);
