create procedure ApagarContaBancaria(
@id int)
as
begin

delete from contaBancaria
where id = @id

end

create procedure InserirContaBancaria
( @Id Int,
@idUsuario int,
@TipoConta Varchar(20),
@saldoInicial decimal(8,2),
@idbanco int)
as
begin

insert into ContaBancaria
(id,
idBanco,
idUsuario,
saldoInicial

)
values(
@id,
@idbanco,
@idUsuario,
@saldoInicial
)

end;

Create procedure AtualizarContaBancaria
(
@Id int,
@saldoInicial decimal(8,2),
@tipoConta varchar(20),
@idBanco int
)
as
begin

update ContaBancaria
set saldoInicial = @saldoInicial,
tipoConta = @tipoConta,
idBanco = @idBanco
where id = @id

end


--Criar uma stored procedure para inserir dados na tabela transacao - Criar tabela transacao -Criar o stored inserirdadostabela -- 

create procedure InsereTransacao
( @IdTransacao Int,
@idContaBancaria int,
@DataTransacao Datetime,
@Valor decimal(8,2),
@Descricao varchar(100),
@StatusTransacao (Varchar(10)null,
)

as
begin
  
end