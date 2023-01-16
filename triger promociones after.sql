USE MEGATLON
DELIMITER //
cREATE TRIGGER tr_insertar_nuevas_promociones_after
BEFORE INSERT ON promociones
FOR EACH ROW
BEGIN
        INSERT INTO tr_insertar_nuevas_promociones (
              id_promocion
            , id_socio
            , cod_promocion
            , nombre_promocion
            ,tel_socio
            ,medio_de_pago
            ,Banco_aceptado
        ) VALUES (
            NEW.id_promocion
            , NEW.cod_promocion
            , NEW.Nombre_promocion
            , NEW.tel_socio
            , NEW. medio_de_pago_aceptado
            ,NEW.banco_aceptado
            , USER()
        );
END //