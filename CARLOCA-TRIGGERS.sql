CREATE TRIGGER atualiza_km_atual AFTER INSERT ON LOCACOES
FOR EACH ROW
BEGIN
    UPDATE CARROS
    SET KM_ATUAL = NEW.KM_FINAL
    WHERE CARROS.ID = NEW.ID_CARRO;
END;

CREATE TRIGGER atualiza_situacao_carro AFTER INSERT ON LOCACOES
FOR EACH ROW
BEGIN
  UPDATE CARROS
  SET SITUACAO = 'alugado'
  WHERE ID = NEW.ID_CARRO;
END;


CREATE TRIGGER tr_limitar_update_cor BEFORE UPDATE ON CARROS
FOR EACH ROW
BEGIN
    IF NEW.SITUACAO = 'disponivel' AND NEW.COR NOT IN ('branco', 'preto', 'prata') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cor inválida';
    END IF;
END;


CREATE DEFINER = CURRENT_USER 
TRIGGER `CARLOCA`.`LOCACOES_BEFORE_INSERT` BEFORE INSERT ON `LOCACOES` FOR EACH ROW
BEGIN
   IF EXISTS (SELECT situacao FROM CARROS C WHERE C.ID = NEW.ID_CARROS AND situacao != 'disponivel') THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Carro não disponível para aluguel';
    END IF;
END;




