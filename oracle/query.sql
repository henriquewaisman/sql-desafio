select 
pdt.numpedido as numero_pedido,
emp.nomfantasia as nome_empresa,
cid.dsccidade as cidade_empresa,
frn.codfornecedor || ' - ' || frn.nomfantasia as fornecedor,
to_char(pdt.datemissao, 'DD-MM-YYYY') as data_emissao,
itm.codproduto as codigo_produto,
pdesc.dscdescricao as produto_descricao,
itm.qtdprodutopedido as quantidade_item,
itm.qtdprodutopedido * itm.valprodutopedido as valor_total_produto_pedido
pdt.numpedido as numero_pedido,
emp.nomfantasia as nome_empresa,
cid.dsccidade as cidade_empresa,
frn.codfornecedor || ' - ' || frn.nomfantasia as fornecedor,
to_char(pdt.datemissao, 'DD-MM-YYYY') as data_emissao,
itm.codproduto as codigo_produto,
pdesc.dscdescricao as produto_descricao,
itm.qtdprodutopedido as quantidade_item,
itm.qtdprodutopedido * itm.valprodutopedido as valor_total_produto_pedido
from pedidotreinamento pdt
join gen_empresa emp
on pdt.codempresa = emp.codempresa
join gen_cidade cid
on emp.codcidade = cid.codcidade
join gen_fornecedor frn
on frn.codfornecedor = pdt.codfornecedor
join pedidotreinamentoitem itm
on itm.numpedido = pdt.numpedido
join gen_produtodescricao pdesc
on pdesc.codproduto = itm.codproduto
where pdt.idtsituacao = 'F';
