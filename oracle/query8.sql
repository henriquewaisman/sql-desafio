select distinct coduf, count(codcidade)
from gen_cidade
group by coduf;
