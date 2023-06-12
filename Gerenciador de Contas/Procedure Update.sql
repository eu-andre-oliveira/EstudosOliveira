USE [GERENCIADOR_CONTAS]
GO

DECLARE @RC int
DECLARE @IdUsuario int
DECLARE @SenhaNova varchar(30)

set @IdUsuario = 1
set @SenhaNova ='sexo'
-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[UsuarioSenhaNova] 
   @IdUsuario
  ,@SenhaNova
GO


