describe pessoas;

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

select * from pessoas;


/* Crie uma outra tabela */

create table if not exists cursos (
  nome varchar(30) not null unique,
  descricao text,
  carga int unsigned,
  totaulas int unsigned,
  ano year default '2016'
) default charset=utf8mb4;

alter table cursos
add column idcurso int first;

describe cursos;

/* Faça o teste */

create table if not exists teste(
  id int, 
  nome varchar(10),
  idade int
);

insert into teste value 
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

drop table if exists teste;
