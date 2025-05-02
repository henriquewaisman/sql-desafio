select ped.numpedido, 
ped.datemissao, 
emp.codabreviacao,
ped.codfornecedor,
forn.dscrazaosocial
from pedidotreinamento ped
join gen_empresa emp
on ped.codempresa = emp.codempresa
join gen_fornecedor forn
on forn.codfornecedor = ped.codfornecedor
where forn.codfornecedor = 408232 or forn.codfornecedor = 344306
order by ped.datemissao;
