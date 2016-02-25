/*selecionar tabela*/
select * from tblCliente
/*selecionar só o campo nome da tabela*/
select  Nome from tblCliente
/*inserir mais um valor na tabela*/
insert
into tblCliente
values('Wesley','23-09-1993','4000')
/*atualizar um campo ja cadastradro na tabela*/
update tblCliente
set Nome ='Wesley Maximiano'
where idCliente=5
/*deletar algum campo na tabela*/
delete 
from tblCliente
where idCliente =5


use db_Biblioteca
--criando tabela
create table tbl_livro--comando para criar a tabela mais o nome dela 
(id_Livro smallint primary key identity(100,1),--nome do campo da tabela.  smallint é para alto incrementar.  primary key chave primaria
nomeLivro varchar(50) not null,--not null é para não aceitar campo vazio
isbn varchar(30) not null unique, --unique é que ele tem q ser valor unico
idAuto smallint not null,
dataPublicacao datetime not null,
precoLivro money not null
)

select * from tbl_livro

create table tbl_Autor(
id_autor smallint primary key,
nomeAltor varchar(50) not null,
sobrenomeAutor varchar(50) not null
)

create table tbl_editoras(
id_Editora smallint primary key identity,
nomeEditora varchar(50) not null
)



select * from tblPessoa
select * from tbProduto
select * from tbPedidos
--juntando tabelas(sempre usar campos com os mesmo nome )
select * from tbPedidos --
inner join tbPessoa on tbPedidos.idpessoa = tbPessoa.idpessoa--aqui eu pegeui os campos com os mesmo nome de tabelas diferente e juntei, são campos de referencia 



--como fazer update em tabela

 select * from tbPedidos--seleciono a tabel
update tbPedidos--tabela q irei fazer update
set valor ='300.00'--determino o campo e o valor q sera coloccado
where idPedidos=1--nome de referencia (de preferencia algum q tenha nome uico )

update tbPedidos
set valor ='5000.00'
where idPedidos=3 



insert into tbProduto --inserir valores na tabela
values('GTA5','5')--determina os valores e os campos dos valores

insert into tbProduto
values ('unchartd','6')
