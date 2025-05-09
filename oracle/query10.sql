select forn.codfornecedor AS COD_FORNECEDOR
from gen_fornecedor forn
left join pedidotreinamento ped
on ped.codfornecedor = forn.codfornecedor
and ped.datemissao > (sysdate - interval '2' year)
where ped.codfornecedor is null;
