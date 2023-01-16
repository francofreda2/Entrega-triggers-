CREATE TABLE tr_insertar_nuevas_promociones(
      id_promocion INT UNSIGNED AUTO_INCREMENT primary key not null,
      id_socio INTEGER UNSIGNED not null,
      Cod_promocion INTEGER,
      Nombre_promocion VARCHAR(20) ,
      Tel_socio DECIMAL(20,0),
      Medio_de_pago_aceptado  VARCHAR(20),
      Banco_aceptado  VARCHAR(20),
      FOREIGN KEY (id_socio)  references socios (id_socio)
      );