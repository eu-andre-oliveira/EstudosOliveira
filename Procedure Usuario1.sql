USE [GERENCIADOR_CONTAS]
GO

DECLARE @RC int
DECLARE @IdUsuario int=2
DECLARE @Nome varchar(50)='ANDRE'
DECLARE @DataNascimento smalldatetime=CONVERT(DATE,'1986-11-20')
DECLARE @Email varchar(50)= 'eu.andre.oliveira@hotmail.com'
DECLARE @Senha varchar(30)='656970'

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[InsereUsuario] 
   @IdUsuario
  ,@Nome
  ,@DataNascimento
  ,@Email
  ,@Senha
GO


