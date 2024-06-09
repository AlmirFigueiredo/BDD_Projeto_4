CREATE TRIGGER before_insert_funcionario
BEFORE INSERT ON funcionario
FOR EACH ROW
EXECUTE FUNCTION checa_pessoa_existe();

CREATE TRIGGER before_insert_professor
BEFORE INSERT ON professor
FOR EACH ROW
EXECUTE FUNCTION checa_pessoa_existe();

CREATE TRIGGER before_insert_aluno
BEFORE INSERT ON aluno
FOR EACH ROW
EXECUTE FUNCTION checa_pessoa_existe();

CREATE TRIGGER before_insert_cliente
BEFORE INSERT ON cliente
FOR EACH ROW
EXECUTE FUNCTION checa_pessoa_existe();

CREATE TRIGGER  after_insert_update_status_pedido
BEFORE INSERT OR UPDATE ON pedido
FOR EACH ROW
EXECUTE FUNCTION update_status_pedido();

CREATE TRIGGER after_update_produto
BEFORE UPDATE ON produto
FOR EACH ROW
EXECUTE FUNCTION checar_quantidade_minima_produtos();

CREATE TRIGGER after_update_pedido
BEFORE UPDATE ON pedido
FOR EACH ROW
EXECUTE FUNCTION update_status_pedido();

