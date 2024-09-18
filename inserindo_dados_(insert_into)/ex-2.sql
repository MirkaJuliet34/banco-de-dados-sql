
use cadastro;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

select * from pessoas;

 /* Depois troca os values */

('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

/* Acrescenta o ID, insere DEFAULT no ínicio e no fim e muda os values */

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

select * from pessoas;

/* Depois mudamos a estrutura do insert */

insert into pessoas value
(DEFAULT, 'Adagilza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

select * from pessoas;
