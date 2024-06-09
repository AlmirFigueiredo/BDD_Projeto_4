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
    numero VARCHAR,
    bairro VARCHAR,
    complemento VARCHAR
```
### Aplicando a 2NF

A Segunda Forma Normal (2NF) exige que todas as colunas não-chave dependem completamente da chave primária, não havendo dependências parciais, além disso, deve estar em 1NF.

Foi verificado que todas as tabelas do banco de dados já estão em conformidade com a 2NF. Isso significa que todas as colunas não-chave dependem completamente da chave primária, garantindo a eliminação de dependências parciais.

Portanto, não é necessário realizar nenhuma modificação no banco de dados.

### Aplicando a 3NF

A Terceira Forma Normal (3NF) exige que, além de estar na 2NF e 1NF, não exista atributos transitivos, foi verificado no modelo, e as tabelas estão em conformidade com essa norma.
