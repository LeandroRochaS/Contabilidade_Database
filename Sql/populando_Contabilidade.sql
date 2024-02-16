-- Populando tabela Orgao
INSERT INTO Orgao (OrgaoID, Nome, Responsavel) VALUES
(1, 'Secretaria de Educação', 'João Silva'),
(2, 'Secretaria de Saúde', 'Maria Oliveira'),
(3, 'Secretaria de Finanças', 'Carlos Souza');

-- Populando tabela Orcamento
INSERT INTO Orcamento (OrcamentoID, Ano, MontanteTotal, DataAprovacao, OrgaoID) VALUES
(1, 2022, 1000000.00, '2022-01-10', 1),
(2, 2022, 800000.00, '2022-01-15', 2),
(3, 2022, 1200000.00, '2022-02-01', 3);

-- Populando tabela SolicitacaoDespesa
INSERT INTO SolicitacaoDespesa (SolicitacaoDespesaID, Numero, Data, Tipo, ValorSolicitado, OrgaoID) VALUES
(1, 123, '2022-01-05', 'Educação Básica', 50000.00, 1),
(2, 456, '2022-01-20', 'Atendimento Médico', 30000.00, 2),
(3, 789, '2022-02-05', 'Infraestrutura', 70000.00, 3);

-- Populando tabela Empenho
INSERT INTO Empenho (EmpenhoID, DataEmissao, Historico, Acao, UnidadeOrcamentaria, Funcao, SubFuncao, Programa, OrgaoID, SolicitacaoDespesaID, OrcamentoID) VALUES
(1, '2022-01-12', 'Compra de livros e material didático', 'Ação1', 'Unidade1', 'Educação', 'SubEducação', 'Programa1', 1, 1, 1),
(2, '2022-01-25', 'Contratação de médicos e enfermeiros', 'Ação2', 'Unidade2', 'Saúde', 'SubSaúde', 'Programa2', 2, 2, 2),
(3, '2022-02-10', 'Melhorias em infraestrutura urbana', 'Ação3', 'Unidade3', 'Finanças', 'SubFinanças', 'Programa3', 3, 3, 3);

-- Populando tabela DocumentoLiquidacao
INSERT INTO DocumentoLiquidacao (DocumentoID, TipoDocumento, NumeroDocumento, DataDocumento, ValorDocumento, EmpenhoID) VALUES
(1, 'Nota Fiscal', 'NF123', '2022-01-15', 45000.00, 1),
(2, 'Recibo', 'REC456', '2022-02-01', 25000.00, 2),
(3, 'Nota Fiscal', 'NF789', '2022-02-15', 60000.00, 3);

-- Populando tabela ContaCorrente
INSERT INTO ContaCorrente (ContaCorrenteID, NomeBanco, NumeroConta, Saldo) VALUES
(1, 'Banco A', '12345678', 100000.00),
(2, 'Banco B', '98765432', 80000.00),
(3, 'Banco C', '56789012', 120000.00);

-- Populando tabela Pagamento
INSERT INTO Pagamento (PagamentoID, DataPagamento, ValorPagamento, ContaCorrenteID, LiquidacaoID) VALUES
(1, '2022-01-20', 40000.00, 1, 1),
(2, '2022-02-05', 20000.00, 2, 2),
(3, '2022-02-20', 50000.00, 3, 3);