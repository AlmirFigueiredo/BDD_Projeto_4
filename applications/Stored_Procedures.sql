CREATE OR REPLACE PROCEDURE inserir_funcionario(
    p_pessoa_id INTEGER,
    p_nome VARCHAR,
    p_email VARCHAR,
    p_rua VARCHAR,
    p_cidade VARCHAR,
    p_numero VARCHAR,
    p_bairro VARCHAR,
    p_complemento VARCHAR,
    p_data_nascimento DATE,
    p_telefone VARCHAR,
    p_cpf VARCHAR,
    p_carga_horaria INTEGER,
    p_valor_hora DECIMAL,
    p_turno VARCHAR,
    p_departamento VARCHAR,
    p_setor_departamento VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pessoa (pessoa_id, nome, email, rua, cidade, numero, bairro, complemento, data_nascimento, telefone, cpf)
    VALUES (p_pessoa_id, p_nome, p_email, p_rua, p_cidade, p_numero, p_bairro, p_complemento, p_data_nascimento, p_telefone, p_cpf);
    
    INSERT INTO funcionario (funcionario_id, carga_horaria, valor_hora, turno, departamento, setor_departamento, fk_pessoa_pessoa_id)
    VALUES (p_pessoa_id, p_carga_horaria, p_valor_hora, p_turno, p_departamento, p_setor_departamento, p_pessoa_id);
END;
$$;

CREATE OR REPLACE PROCEDURE inserir_aluno(
    p_pessoa_id INTEGER,
    p_nome VARCHAR,
    p_email VARCHAR,
    p_rua VARCHAR,
    p_cidade VARCHAR,
    p_numero VARCHAR,
    p_bairro VARCHAR,
    p_complemento VARCHAR,
    p_data_nascimento DATE,
    p_telefone VARCHAR,
    p_cpf VARCHAR,
    p_matricula VARCHAR,
    p_email_institucional VARCHAR,
    p_ano_escolar VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pessoa (pessoa_id, nome, email, rua, cidade, numero, bairro, complemento, data_nascimento, telefone, cpf)
    VALUES (p_pessoa_id, p_nome, p_email, p_rua, p_cidade, p_numero, p_bairro, p_complemento, p_data_nascimento, p_telefone, p_cpf);
    
    INSERT INTO aluno (aluno_id, matricula, email_institucional, ano_escolar, fk_pessoa_pessoa_id)
    VALUES (p_pessoa_id, p_matricula, p_email_institucional, p_ano_escolar, p_pessoa_id);
END;
$$;

CREATE OR REPLACE PROCEDURE inserir_professor(
    p_pessoa_id INTEGER,
    p_nome VARCHAR,
    p_email VARCHAR,
    p_rua VARCHAR,
    p_cidade VARCHAR,
    p_numero VARCHAR,
    p_bairro VARCHAR,
    p_complemento VARCHAR,
    p_data_nascimento DATE,
    p_telefone VARCHAR,
    p_cpf VARCHAR,
    p_departamento_academico VARCHAR,
    p_titulacao VARCHAR,
    p_especialidade VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pessoa (pessoa_id, nome, email, rua, cidade, numero, bairro, complemento, data_nascimento, telefone, cpf)
    VALUES (p_pessoa_id, p_nome, p_email, p_rua, p_cidade, p_numero, p_bairro, p_complemento, p_data_nascimento, p_telefone, p_cpf);
    
    INSERT INTO professor (professor_id, departamento_academico, titulacao, especialidade, fk_pessoa_pessoa_id)
    VALUES (p_pessoa_id, p_departamento_academico, p_titulacao, p_especialidade, p_pessoa_id);
END;
$$;

CREATE OR REPLACE PROCEDURE inserir_cliente(
    p_pessoa_id INTEGER,
    p_nome VARCHAR,
    p_email VARCHAR,
    p_rua VARCHAR,
    p_cidade VARCHAR,
    p_numero VARCHAR,
    p_bairro VARCHAR,
    p_complemento VARCHAR,
    p_data_nascimento DATE,
    p_telefone VARCHAR,
    p_cpf VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pessoa (pessoa_id, nome, email, rua, cidade, numero, bairro, complemento, data_nascimento, telefone, cpf)
    VALUES (p_pessoa_id, p_nome, p_email, p_rua, p_cidade, p_numero, p_bairro, p_complemento, p_data_nascimento, p_telefone, p_cpf);
    
    INSERT INTO cliente (cliente_id, fk_pessoa_pessoa_id)
    VALUES (p_pessoa_id, p_pessoa_id);
END;
$$;

