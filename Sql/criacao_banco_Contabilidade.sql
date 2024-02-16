CREATE TABLE Orgao (
    OrgaoID INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Responsavel VARCHAR(255) NOT NULL
);

CREATE TABLE Orcamento (
    OrcamentoID INT PRIMARY KEY,
    Ano INT NOT NULL,
    MontanteTotal DECIMAL(10, 2) NOT NULL,
    DataAprovacao DATE NOT NULL,
    OrgaoID INT,
    FOREIGN KEY (OrgaoID) REFERENCES Orgao(OrgaoID)
);

CREATE TABLE SolicitacaoDespesa (
    SolicitacaoDespesaID INT PRIMARY KEY,
    Numero INT NOT NULL,
    Data DATE NOT NULL,
    Tipo VARCHAR(255) NOT NULL,
    ValorSolicitado DECIMAL(10, 2) NOT NULL,
    OrgaoID INT,
    FOREIGN KEY (OrgaoID) REFERENCES Orgao(OrgaoID)
);

CREATE TABLE Empenho (
    EmpenhoID INT PRIMARY KEY,
    DataEmissao DATE NOT NULL,
    Historico TEXT,
    Acao VARCHAR(255) NOT NULL,
    UnidadeOrcamentaria VARCHAR(255) NOT NULL,
    Funcao VARCHAR(255) NOT NULL,
    SubFuncao VARCHAR(255) NOT NULL,
    Programa VARCHAR(255) NOT NULL,
    OrgaoID INT,
    SolicitacaoDespesaID INT,
    OrcamentoID INT,
    FOREIGN KEY (OrgaoID) REFERENCES Orgao(OrgaoID),
    FOREIGN KEY (SolicitacaoDespesaID) REFERENCES SolicitacaoDespesa(SolicitacaoDespesaID),
    FOREIGN KEY (OrcamentoID) REFERENCES Orcamento(OrcamentoID)
);

CREATE TABLE DocumentoLiquidacao (
    DocumentoID INT PRIMARY KEY,
    TipoDocumento VARCHAR(255) NOT NULL,
    NumeroDocumento VARCHAR(50) NOT NULL,
    DataDocumento DATE NOT NULL,
    ValorDocumento DECIMAL(10, 2) NOT NULL,
    EmpenhoID INT,
    FOREIGN KEY (EmpenhoID) REFERENCES Empenho(EmpenhoID)
);

CREATE TABLE ContaCorrente (
    ContaCorrenteID INT PRIMARY KEY,
    NomeBanco VARCHAR(255) NOT NULL,
    NumeroConta VARCHAR(20) NOT NULL,
    Saldo DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Pagamento (
    PagamentoID INT PRIMARY KEY,
    DataPagamento DATE NOT NULL,
    ValorPagamento DECIMAL(10, 2) NOT NULL,
    ContaCorrenteID INT,
    LiquidacaoId INT,
    FOREIGN KEY (ContaCorrenteID) REFERENCES ContaCorrente(ContaCorrenteID),
    FOREIGN KEY (LiquidacaoID) REFERENCES DocumentoLiquidacao(DocumentoID)
);

