use desafio;
select 
rank() over (order by count(cli.id) desc) as ranking,
date_format(cli.datacadastro, '%m-%Y') as mes,
count(cli.id) as clientes_cadastrados
from cliente cli
group by 
month(cli.datacadastro), 
year(cli.datacadastro)
order by count(cli.id) desc;
