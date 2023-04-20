CREATE TABLE [Conta] (
idConta int identity,

idCliente int NOT NULL,
senha varchar(6) NOT NULL,
agencia varchar(4) NOT NULL,
conta int NOT NULL,
saldo decimal NOT NULL,

  CONSTRAINT [PK_CONTA] PRIMARY KEY (idConta),

  Constraint fk_Conta_Cliente foreign key (idCliente) references Cliente (idCliente),
 );

CREATE TABLE [Cliente] (
idCliente int identity,

nome varchar(50) NOT NULL,
cpf char(11) NOT NULL,
celular varchar(20) NOT NULL,
email varchar(50) NOT NULL,
logradouro varchar(50) NOT NULL,
complemento varchar(30) NOT NULL,
cidade varchar(30) NOT NULL,
cep varchar(10) NOT NULL,
genero varchar(15) NOT NULL,
estado varchar(20) NOT NULL,
data_de_nascimento char(8) NOT NULL,
loginCliente varchar(50) not null,
senhaCliente char(6) not null,

  CONSTRAINT [PK_CLIENTE] PRIMARY KEY (idCliente),
 

);

CREATE TABLE [Movimentacoes] (
idMovimentacao int identity,
	
idConta int NOT NULL,
idOperacao int NOT NULL,
data_hora datetime NOT NULL,
valor decimal NOT NULL,
 
CONSTRAINT [PK_MOVIMENTACOES] PRIMARY KEY (idMovimentacao),

Constraint fk_Movimentacoes_Conta foreign key (idConta) references Conta (idConta),

Constraint fk_Movimentacoes_Operacao foreign key (idOperacao) references Operacao (idOperacao),
);

CREATE TABLE [Operacao] (
idOperacao int identity NOT NULL,

nomeOperacao varchar(50) NOT NULL,
 CONSTRAINT [PK_OPERACAO] PRIMARY KEY (idOperacao),
  );

CREATE TABLE [Agendamentos] (
idAgendamento int identity,

idConta int NOT NULL,
idOperacao int NOT NULL,
datahora datetime NOT NULL,
valor decimal NOT NULL,
statusAgendamento varchar(30) NOT NULL,

CONSTRAINT [PK_AGENDAMENTO] PRIMARY KEY (idAgendamento),

Constraint fk_Agendamentos_Conta foreign key (idConta) references Conta (idConta),

Constraint fk_Agendamentos_Operacao foreign key (idOperacao) references Operacao (idOperacao),

constraint ck_status_agendamento check (statusAgendamento in('Em análise','Falha na comunicação','Concluido com êxito'))

);
creat table fornecedor





