SELECT Orcamento.*, Orgao.Nome AS NomeOrgao
FROM Orcamento
JOIN Orgao ON Orcamento.OrgaoID = Orgao.OrgaoID;

SELECT
    Orgao.Nome AS Orgao,
    Orcamento.Ano,
    SUM(DocumentoLiquidacao.ValorDocumento) AS TotalReceitas
FROM
    DocumentoLiquidacao
JOIN Empenho ON DocumentoLiquidacao.EmpenhoID = Empenho.EmpenhoID
JOIN Orcamento ON Empenho.OrcamentoID = Orcamento.OrcamentoID
JOIN Orgao ON Orcamento.OrgaoID = Orgao.OrgaoID
GROUP BY
    Orgao.Nome, Orcamento.Ano;


SELECT
    DocumentoLiquidacao.TipoDocumento,
    SUM(DocumentoLiquidacao.ValorDocumento) AS TotalReceitas
FROM
    DocumentoLiquidacao
GROUP BY
    DocumentoLiquidacao.TipoDocumento;

    SELECT
    ContaCorrente.NomeBanco,
    SUM(Pagamento.ValorPagamento) AS TotalReceitas
FROM
    Pagamento
JOIN ContaCorrente ON Pagamento.ContaCorrenteID = ContaCorrente.ContaCorrenteID
GROUP BY
    ContaCorrente.NomeBanco;