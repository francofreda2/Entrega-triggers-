USE MEGATLON
DELIMITER //
cREATE TRIGGER tr_insertar_nuevas_sucusales
after INSERT ON tr_insertar_nuevas_sucursales 
FOR EACH ROW
BEGIN
        INSERT INTO sucursal (  id_sucursal,
      Cod_sucursal ,
      Nombre_sucursal ,
      Tel_sucursal ,
      Direccion_sucursal )
              
         VALUES (
          new. id_sucursal,
		new.Cod_sucursal ,
		new. Nombre_sucursal ,
		new.Tel_sucursal ,
		new. Direccion_sucursal 
            , USER()
        );
END //
DELIMITER ;