CREATE VIEW vw_funcionarios_completos AS
SELECT 
    funcionario.funcionario_id,
    pessoa.nome,
    pessoa.email,
    pessoa.rua || ', ' || pessoa.numero || ', ' || pessoa.complemento || ', ' || pessoa.bairro || ', ' || pessoa.cidade AS endereco,
    pessoa.telefone,
    funcionario.carga_horaria,
    funcionario.valor_hora,
    funcionario.turno,
    funcionario.departamento,
    funcionario.setor_departamento
FROM funcionario
INNER JOIN pessoa ON (funcionario.fk_pessoa_pessoa_id = pessoa.pessoa_id);

CREATE VIEW vw_professores_completos AS
SELECT 
    professor.professor_id,
    pessoa.nome,
    pessoa.email,
    pessoa.rua || ', ' || pessoa.numero || ', ' || pessoa.complemento || ', ' || pessoa.bairro || ', ' || pessoa.cidade AS endereco,
    pessoa.telefone,
    professor.departamento_academico,
    professor.titulacao,
    professor.especialidade
FROM professor
INNER JOIN pessoa ON (professor.fk_pessoa_pessoa_id = pessoa.pessoa_id);

CREATE VIEW vw_alunos_completos AS
SELECT 
    aluno.aluno_id,
    pessoa.nome,
    pessoa.email,
    pessoa.rua || ', ' || pessoa.numero || ', ' || pessoa.complemento || ', ' || pessoa.bairro || ', ' || pessoa.cidade AS endereco,
    pessoa.telefone,
    aluno.matricula,
    aluno.email_institucional,
    aluno.ano_escolar
FROM aluno
INNER JOIN pessoa ON (aluno.fk_pessoa_pessoa_id = pessoa.pessoa_id);

CREATE VIEW vw_top_5_produtos_mais_vendidos AS
SELECT 
    produto.produto_id,
    produto.nome,
    produto.descricao,
    SUM(inclui_prod.quantidade) AS quantidade_vendida
FROM produto
INNER JOIN inclui_prod ON (produto.produto_id = inclui_prod.fk_produto_produto_id)
GROUP BY produto.produto_id, produto.nome, produto.descricao
ORDER BY quantidade_vendida DESC
LIMIT 5;

CREATE VIEW vw_livros_por_categoria AS
SELECT 
    livro.genero AS categoria,
    COUNT(*) AS quantidade_livros
FROM livro
GROUP BY livro.genero
ORDER BY quantidade_livros DESC;

