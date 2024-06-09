## Triggers
Os triggers sao importantes mecanismos de automação em um banco de dados, com eles, é possível disparar automações a partir de ações que ocorrem no banco. Com isso, é necessário criar trigger functions, que são as funções realizadas em si, e os triggers, que são os gatilhos para executar essas funções.
### Trigger Functions
As trigger functions foram criadas com o objetivo de serem funções utilizadas pelos triggers, são elas: `checa_pessoa_existe()`, `update_status_pedido()`, `checar_quantidade_minima_produtos()` e `update_status_pedido()`. Estão em `applications/Triggers/Functions.sql`
### Triggers
Os triggers os gatilhos para ocorrer a aplicação das funções, são elas: `before_insert_funcionario`, `before_insert_professor`, `before_insert_aluno`, `before_insert_cliente`,`after_insert_update_status_pedido`, `after_update_produto` e `after_update_pedido`.
## Criação de Stored Procedures
Os stored procedures desempenham um papel muito importante em um banco de dados, com ele, é possível criar prodecimentos e tornar o uso do banco de dados mais prático e rápido. Portanto, foi criado quatro stored procedures, que têm como objetivo facilitar a inserção de alunos, professores, clientes e funcionarios no banco de dados. Antes disso, era necessário criar uma pessoa antes e depois ter que criar essas especializações manualmente, com os stored procedures criados, é possivel fazer a criação de forma direta. Os stored procedures são: `inserir_cliente`, `inserir_professor`, `inserir_funcionario` e `inserir_aluno`. É possível verificar esses stored procedures em `applications/Stored_Procedures.sql`

## Criação de Views
As views são muito importantes para facilitar a visualização dos dados armazenados em um banco de dados. A partir disso, foi criado 5 views no nosso banco de dados que são autoexplicativas: `vw_funcionarios_completos`, `vw_professores_completos`, `vw_alunos_completos`, `vw_top_5_produtos_mais_vendidos` e `vw_livros_por_categoria`. É possível verificar o arquivo `.sql` que permite a criação dessas views  em `applications/Views.sql`

## Normalização de Banco de Dados

A normalização de banco de dados é um processo utilizado para organizar os dados de forma eficiente, eliminando redundâncias e garantindo a integridade dos dados. Esse processo é dividido em várias formas normais, conhecidas como 1NF (Primeira Forma Normal), 2NF (Segunda Forma Normal) e 3NF (Terceira Forma Normal). Para garantir que o banco de dados esteja na 3NF, é necessário aplicar as normas 1NF e 2NF sucessivamente. 

### Aplicando a 1NF

A Primeira Forma Normal (1NF) exige que todas as colunas de uma tabela contenham apenas valores atômicos (indivisíveis) e que cada tabela seja única (sem grupos repetitivos ou multivalorados).

Para aplicar a 1NF nas tabelas do nosso banco de dados, as seguintes alterações foram feitas:

#### Remoção do atribuito endereco e inserção dos atributos: rua, cidade, numero, bairro e complemento, nas tabelas: `pessoa`, `pedido`, `fornecedor`, `distribuidora`, `editora` e `biblioteca`

**Motivo**: Como na 1NF devemos tornar os valores atômicos, seria pertinente dividir o atributo endereço em componentes menores (rua, numero, cidade, bairro, complemento).

```sql
-- Antes:
    endereco VARCHAR
```
```sql
-- Depois:
    rua VARCHAR,
    cidade VARCHAR,
    endereco_numero VARCHAR,
    bairro VARCHAR,
    complemento VARCHAR
```
### Aplicando a 2NF

A Segunda Forma Normal (2NF) exige que todas as colunas não-chave dependem completamente da chave primária, não havendo dependências parciais, além disso, deve estar em 1NF.

Foi verificado que todas as tabelas do banco de dados já estão em conformidade com a 2NF. Isso significa que todas as colunas não-chave dependem completamente da chave primária, garantindo a eliminação de dependências parciais.

Portanto, não é necessário realizar nenhuma modificação no banco de dados.

### Aplicando a 3NF

A Terceira Forma Normal (3NF) exige que, além de estar na 2NF e 1NF, não exista atributos transitivos, foi verificado no modelo, e as tabelas estão em conformidade com essa norma.
