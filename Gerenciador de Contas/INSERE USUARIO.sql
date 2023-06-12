CREATE PROCEDURE InsereUsuario (
@IdUsuario int,
@Nome varchar(50),
@DataNascimento SmallDateTime,
@Email varchar (50),
@Senha varchar(30)
 )
as
begin
INSERT INTO [dbo].[Usuarios]
([IdUsuario]
,[Nome]
,[DataNascimento]
,[Email],
[Senha])
VALUES
(@IdUsuario
,@Nome
,@DataNascimento
,@Email
,@Senha)

select * from Usuarios

end;





	