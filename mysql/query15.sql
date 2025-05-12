select cli.nome as cliente,
timestampdiff(year, cli.datanascimento, curdate()) as idade
from cliente cli
order by idade desc;
