
--SCRIPT DE CRIACAO DAS TABELAS DIAGRAMA--
--DROP DATABASE GERENCIADOR_CONTAS 
--GO
CREATE DATABASE GERENCIADOR_CONTAS
GO
USE GERENCIADOR_CONTAS
GO

CREATE TABLE Usuarios(

IdUsuario int PRIMARY KEY,
Nome Varchar(50),
DataNascimento Date,
Email varchar(50),
Senha varchar(30)
);

CREATE TABLE ContaRecorrente (
IdContaRecorrente int PRIMARY KEY,
NomeContaFixa Varchar(50),
DiaVencimento int,
TipoRecorrencia varchar(15),
Valor decimal(8,2)
);

CREATE TABLE ContaBancaria (
IdContaBancaria int PRIMARY KEY,
IdUsuario int,
TipoConta Varchar(20),
SaldoInicial decimal(8,2),
IdBanco int 
);

CREATE TABLE Transacao (
IdTransacao int PRIMARY KEY,
IdContaBancaria int,
DataTransacao datetime,
Valor decimal(8,2),
Descricao varchar(100),
StatusTransacao varchar (10)

);

CREATE TABLE Banco (
IdBanco int PRIMARY KEY,
Nome varchar(20),

);


CREATE TABLE Fatura (
IdFatura int PRIMARY KEY,
IdCartaoCredito int,
AnoMesFatura Varchar(7),
ValorFatura Decimal(8,2),
DataVencimento Date,
StatusFatura varchar(10),
IdTransacao int null,
);

CREATE TABLE CartaoCredito (
IdCartaoCredito int PRIMARY KEY,
IdUsuario int,
Bandeira Varchar(15),
DescricaoCartao varchar(20),
DiaVencimento int,
StatusCartao varchar(10)
);

CREATE TABLE LancamentoCartao (
IdLancamentoCartao int PRIMARY KEY,
IdFatura int,
Valor decimal(8,2),
Descricao varchar(20),
DataTransacao Datetime,
QtdeParcelas int,
NumeroParcela int

);




ALTER TABLE ContaBancaria add constraint fk_ContaBancaria_Usuarios
foreign key (IdUsuario)
references Usuarios (IdUsuario)

ALTER TABLE ContaBancaria add constraint fk_ContaBancaria_Banco
foreign key (IdBanco)
references Banco (IdBanco)

ALTER TABLE Transacao add constraint fk_Transacao_ContaBancaria
foreign key (IdContaBancaria)
references ContaBancaria (IdContaBancaria)

ALTER TABLE CartaoCredito add constraint fk_CartaCredito_Usuarios
foreign key (IdUsuario)
references Usuarios (IdUsuario)

ALTER TABLE Fatura add constraint fk_Fatura_CartaoCredito
foreign key (IdCartaoCredito)
references CartaoCredito (IdCartaoCredito)

ALTER TABLE Fatura add constraint fk_Fatura_Transacao
foreign key (IdTransacao)
references Transacao (IdTransacao)

ALTER TABLE LancamentoCartao add constraint fk_LancamentoCartao_Fatura
foreign key (IdFatura)
references Fatura (IdFatura)






