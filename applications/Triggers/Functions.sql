CREATE OR REPLACE FUNCTION checa_pessoa_existe()
RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pessoa WHERE pessoa_id = NEW.fk_pessoa_pessoa_id) THEN
        RAISE EXCEPTION 'Pessoa com ID % não existe.', NEW.fk_pessoa_pessoa_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_status_pedido()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.data_pagamento IS NOT NULL THEN
        NEW.status_pagamento := 'Pago';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION checar_quantidade_minima_produtos()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.quantidade < NEW.quantidade_minima THEN
        RAISE NOTICE 'Quantidade do produto % está abaixo do mínimo. Quantidade atual: %, Quantidade mínima: %',
                     NEW.nome, NEW.quantidade, NEW.quantidade_minima;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_status_pedido()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.data_entrega IS NOT NULL THEN
        NEW.status_entrega := 'Entregue';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


