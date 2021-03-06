/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : verificadores

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 18/02/2020 14:49:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cargos
-- ----------------------------
DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `capacidad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activo` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cargos
-- ----------------------------
INSERT INTO `cargos` VALUES (1, 'INSPECTOR', NULL, 1);
INSERT INTO `cargos` VALUES (2, 'INSPECTOR DE VARIOS RAMOS', NULL, 1);
INSERT INTO `cargos` VALUES (3, 'INSPECTOR DE VARIOS RAMOS ESPECIALIZADO', NULL, 1);
INSERT INTO `cargos` VALUES (4, 'INSPECTOR DE VARIOS RAMOS PROFESIONISTA', NULL, 1);
INSERT INTO `cargos` VALUES (5, 'VERIFICADOR', NULL, 1);
INSERT INTO `cargos` VALUES (6, 'INSPECTOR DE URBANISMO', NULL, 1);
INSERT INTO `cargos` VALUES (7, 'VERIFICADOR DE OBRAS', NULL, 1);
INSERT INTO `cargos` VALUES (8, 'INSPECTOR AMBIENTAL ESPECIALIZADO', NULL, 1);
INSERT INTO `cargos` VALUES (9, 'INSPECTOR DE URBANISMO ESPECIALIZADO', NULL, 1);
INSERT INTO `cargos` VALUES (10, 'INSPECTOR ESPECIALIZADO', NULL, 1);
INSERT INTO `cargos` VALUES (11, 'COORDINADOR GENERAL DE INSPECTORES AMBIENTALES', NULL, 1);
INSERT INTO `cargos` VALUES (12, 'INSPECTOR AMBIENTAL', NULL, 1);
INSERT INTO `cargos` VALUES (13, 'INSPECTOR AMBIENTAL ESPECIALIZADO/ PROFESIONISTA', NULL, 1);
INSERT INTO `cargos` VALUES (14, 'VERIFICADOR SANITARIO', NULL, 1);
INSERT INTO `cargos` VALUES (15, 'Inspector Especial', NULL, 1);
INSERT INTO `cargos` VALUES (16, 'Supervisor Operacion', NULL, 1);
INSERT INTO `cargos` VALUES (17, 'Supervisor Operacion A', NULL, 1);
INSERT INTO `cargos` VALUES (18, 'Supervisor General de Operacion', NULL, 1);
INSERT INTO `cargos` VALUES (19, 'Sup de Instalaciones Domiciliarias', NULL, 1);
INSERT INTO `cargos` VALUES (20, 'Auxiliar de Supervision Comercializacion', NULL, 1);
INSERT INTO `cargos` VALUES (21, 'Inspector B', NULL, 1);
INSERT INTO `cargos` VALUES (22, 'Supervisor General', NULL, 1);
INSERT INTO `cargos` VALUES (23, 'Inspector A', NULL, 1);
INSERT INTO `cargos` VALUES (24, 'Supervisor de Obra', NULL, 1);
INSERT INTO `cargos` VALUES (25, 'Gestor de Cobro A', NULL, 1);
INSERT INTO `cargos` VALUES (26, 'Encargado Supervisor de Cobranza', NULL, 1);
INSERT INTO `cargos` VALUES (27, 'Gestor de Cobro B', NULL, 1);
INSERT INTO `cargos` VALUES (28, 'Aux Supervisor de Planeacion', NULL, 1);
INSERT INTO `cargos` VALUES (29, 'Auxiliar de Mantenimiento B', NULL, 1);
INSERT INTO `cargos` VALUES (30, 'Intendencia', NULL, 1);
INSERT INTO `cargos` VALUES (31, 'Encargado del area de Desc Residuales', NULL, 1);
INSERT INTO `cargos` VALUES (32, 'Ayudante Diverso', NULL, 1);
INSERT INTO `cargos` VALUES (33, 'Inspector de Operaciones', NULL, 1);

-- ----------------------------
-- Table structure for direcciones
-- ----------------------------
DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE `direcciones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activo` tinyint(3) NULL DEFAULT NULL,
  `secretarias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_direcciones_secretarias1`(`secretarias_id`) USING BTREE,
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`secretarias_id`) REFERENCES `secretarias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of direcciones
-- ----------------------------
INSERT INTO `direcciones` VALUES (1, 'Dirección de Patrimonio Municipal', 1, 1);
INSERT INTO `direcciones` VALUES (2, 'Dirección de Mediación y Conciliación Municipal', 1, 1);
INSERT INTO `direcciones` VALUES (3, 'Dirección de la Unidad de Transparencia y Acceso a la Información', 1, 1);
INSERT INTO `direcciones` VALUES (4, 'Dirección de Protección Civil', 1, 2);
INSERT INTO `direcciones` VALUES (5, 'Dirección de Reglamentación e Inspección', 1, 2);
INSERT INTO `direcciones` VALUES (6, 'Dirección de Archivo Municipal', 1, 2);
INSERT INTO `direcciones` VALUES (7, 'Dirección de Relaciones Públicas Y Protocolo', 1, 5);
INSERT INTO `direcciones` VALUES (8, 'Dirección de Comunicación Social', 1, 5);
INSERT INTO `direcciones` VALUES (9, 'Enlace SER', 1, 5);
INSERT INTO `direcciones` VALUES (10, 'Dirección de Recursos Humanos', 1, 6);
INSERT INTO `direcciones` VALUES (11, 'Dirección de Adquisiciones y Arrendamientos', 1, 6);
INSERT INTO `direcciones` VALUES (12, 'Dirección de Desarrollo Humano e Instituciónal', 1, 6);
INSERT INTO `direcciones` VALUES (13, 'Dirección de Servicios Generales', 1, 6);
INSERT INTO `direcciones` VALUES (14, 'Dirección de Policía Preventiva', 1, 7);
INSERT INTO `direcciones` VALUES (15, 'Dirección de Tránsito Municipal', 1, 7);
INSERT INTO `direcciones` VALUES (16, 'Oficina de Prevención y Proximidad Social', 1, 7);
INSERT INTO `direcciones` VALUES (17, 'Dirección de Proyectos e Infraestructura Municipal', 1, 8);
INSERT INTO `direcciones` VALUES (18, 'Dirección de Mantenimiento y Conservación', 1, 8);
INSERT INTO `direcciones` VALUES (19, 'Dirección de Desarrollo Urbano y Vivienda', 1, 9);
INSERT INTO `direcciones` VALUES (20, 'Dirección de Medio Ambiente', 1, 9);
INSERT INTO `direcciones` VALUES (21, 'Dirección de Espacios Públicos', 1, 9);
INSERT INTO `direcciones` VALUES (22, 'Dirección de Parques y Jardines', 1, 10);
INSERT INTO `direcciones` VALUES (23, 'Dirección de Sanidad y Limpia', 1, 10);
INSERT INTO `direcciones` VALUES (24, 'Dirección de Alumbrado Público', 1, 10);
INSERT INTO `direcciones` VALUES (25, 'Dirección de Panteones, Crematorio y Mercados Municipales', 1, 10);
INSERT INTO `direcciones` VALUES (26, 'Dirección de Desarrollo Rural y Asuntos Indígenas', 1, 11);
INSERT INTO `direcciones` VALUES (27, 'Dirección de Desarrollo social', 1, 11);
INSERT INTO `direcciones` VALUES (28, 'Instituto Municipal de la Juventud y Deporte', 1, 11);
INSERT INTO `direcciones` VALUES (29, 'Instituto Municipal de la Mujer', 1, 12);
INSERT INTO `direcciones` VALUES (30, 'Dirección de Inclusión y Diversidad', 1, 12);
INSERT INTO `direcciones` VALUES (31, 'Dirección de Licencias y Giros Mercantiles', 1, 13);
INSERT INTO `direcciones` VALUES (32, 'Dirección de Innovación Gubernamental', 1, 13);
INSERT INTO `direcciones` VALUES (33, 'Dirección de Turismo', 1, 14);
INSERT INTO `direcciones` VALUES (34, 'Dirección de Cultura', 1, 14);

-- ----------------------------
-- Table structure for secretarias
-- ----------------------------
DROP TABLE IF EXISTS `secretarias`;
CREATE TABLE `secretarias`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activo` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secretarias
-- ----------------------------
INSERT INTO `secretarias` VALUES (1, 'Sindicatura Municipal', 1);
INSERT INTO `secretarias` VALUES (2, 'Secretaría del H. Ayuntamiento', 1);
INSERT INTO `secretarias` VALUES (3, 'Tesorería Municipal', 1);
INSERT INTO `secretarias` VALUES (4, 'Contraloría Municipal', 1);
INSERT INTO `secretarias` VALUES (5, 'Secretaría Particular', 1);
INSERT INTO `secretarias` VALUES (6, 'Secretaría de Administración', 1);
INSERT INTO `secretarias` VALUES (7, 'Secretaría de Seguridad Pública', 1);
INSERT INTO `secretarias` VALUES (8, 'Secretaría de Obras Públicas y Movilidad', 1);
INSERT INTO `secretarias` VALUES (9, 'Secretaría de Desarrollo Urbano Y Medio Ambiente', 1);
INSERT INTO `secretarias` VALUES (10, 'Secretaría de Servicios Públicos Municipales', 1);
INSERT INTO `secretarias` VALUES (11, 'Secretaría de Desarrollo Social', 1);
INSERT INTO `secretarias` VALUES (12, 'Secretaría de Politica de Genero e Inclusión', 1);
INSERT INTO `secretarias` VALUES (13, 'Secretaría Fomento Económico', 1);
INSERT INTO `secretarias` VALUES (14, 'Secretaría de Turismo y Cultura', 1);
INSERT INTO `secretarias` VALUES (15, 'DIF', 1);
INSERT INTO `secretarias` VALUES (16, 'Centro Integral de Iniciación Artistica', 1);
INSERT INTO `secretarias` VALUES (17, 'CAPASU', 1);
INSERT INTO `secretarias` VALUES (18, 'IMPLAN', 1);
INSERT INTO `secretarias` VALUES (19, 'ADMINISTRACIÓN DEL PARQUE NACIONAL “BARRANCA DEL CUPATITZIO”', 1);
INSERT INTO `secretarias` VALUES (20, 'CENTRO DE PROTECCIÓN INTEGRAL A MUJERES, NIÑOS Y NIÑAS', 1);

-- ----------------------------
-- Table structure for verificadores
-- ----------------------------
DROP TABLE IF EXISTS `verificadores`;
CREATE TABLE `verificadores`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paterno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `materno` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nom_completo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `no_empleado` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secretaria` int(10) NULL DEFAULT NULL,
  `direccion` int(10) NULL DEFAULT NULL,
  `cargo` int(100) NULL DEFAULT NULL,
  `foto` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_empleados_tics_idx`(`foto`) USING BTREE,
  INDEX `fk_secre`(`secretaria`) USING BTREE,
  INDEX `fk_dire`(`direccion`) USING BTREE,
  INDEX `fk_cargos`(`cargo`) USING BTREE,
  CONSTRAINT `fk_cargos` FOREIGN KEY (`cargo`) REFERENCES `cargos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `verificadores_ibfk_1` FOREIGN KEY (`direccion`) REFERENCES `direcciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `verificadores_ibfk_4` FOREIGN KEY (`secretaria`) REFERENCES `secretarias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of verificadores
-- ----------------------------
INSERT INTO `verificadores` VALUES (1, 'AGUSTIN', 'PLANCARTE', 'MAGAÑA', 'AGUSTIN PLANCARTE MAGAÑA', NULL, 1, 5, 1, 'AGUSTIN-PLANCARTE-MAGAÑA.png');
INSERT INTO `verificadores` VALUES (2, 'EMMA', 'BRAVO', 'RUBIO', 'EMMA BRAVO RUBIO', NULL, 2, 5, 1, 'EMMA-BRAVO-RUBIO.png');
INSERT INTO `verificadores` VALUES (3, 'EDUARDO ALEJANDRO', 'OLALDE', 'RUIZ', 'EDUARDO ALEJANDRO OLALDE RUIZ', NULL, 2, 5, 1, 'EDUARDO ALEJANDRO-OLALDE-RUIZ.png');
INSERT INTO `verificadores` VALUES (4, 'MIGUEL ANGEL', 'REYES', 'MENDEZ', 'MIGUEL ANGEL REYES MENDEZ', NULL, 2, 5, 1, 'MIGUEL ANGEL-REYES-MENDEZ.png');
INSERT INTO `verificadores` VALUES (5, 'RAMIRO', 'RODRIGUEZ', 'AVILEZ', 'RAMIRO RODRIGUEZ AVILEZ', NULL, 2, 5, 1, 'RAMIRO-RODRIGUEZ-AVILEZ.png');
INSERT INTO `verificadores` VALUES (6, 'HECTOR', 'SANCHEZ', 'BUCIO', 'HECTOR SANCHEZ BUCIO', NULL, 2, 5, 1, 'HECTOR-SANCHEZ-BUCIO.png');
INSERT INTO `verificadores` VALUES (7, 'GERARDO GIOVANNI', 'SANDOVAL', 'ARROYO', 'GERARDO GIOVANNI SANDOVAL ARROYO', NULL, 2, 5, 1, 'GERARDO GIOVANNI-SANDOVAL-ARROYO.png');
INSERT INTO `verificadores` VALUES (8, 'ABDUL RENE', 'AGUILERA', 'BARAJAS', 'ABDUL RENE AGUILERA BARAJAS', NULL, 2, 5, 2, 'ABDUL RENE-AGUILERA-BARAJAS.png');
INSERT INTO `verificadores` VALUES (9, 'ANA GABRIELA', 'ARTEAGA', 'VAZQUEZ', 'ANA GABRIELA ARTEAGA VAZQUEZ', NULL, 2, 5, 2, 'ANA GABRIELA-ARTEAGA-VAZQUEZ.png');
INSERT INTO `verificadores` VALUES (10, 'LORENZO', 'BAUTISTA', 'SERVIN', 'LORENZO BAUTISTA SERVIN', NULL, 2, 5, 2, 'LORENZO-BAUTISTA-SERVIN.png');
INSERT INTO `verificadores` VALUES (11, 'JUAN PABLO', 'CALDERON', 'RUIZ', 'JUAN PABLO CALDERON RUIZ', NULL, 2, 5, 2, 'JUAN PABLO-CALDERON-RUIZ.png');
INSERT INTO `verificadores` VALUES (12, 'IGNACIO', 'CAMARENA', 'MARTINEZ', 'IGNACIO CAMARENA MARTINEZ', NULL, 2, 5, 2, 'IGNACIO-CAMARENA-MARTINEZ.png');
INSERT INTO `verificadores` VALUES (13, 'RICARDO', 'CAMPOS', 'PACHECO', 'RICARDO CAMPOS PACHECO', NULL, 2, 5, 2, 'RICARDO-CAMPOS-PACHECO.png');
INSERT INTO `verificadores` VALUES (14, 'CARLOS ALBERTO', 'CARATACHEA', 'BUENO', 'CARLOS ALBERTO CARATACHEA BUENO', NULL, 2, 5, 2, 'CARLOS ALBERTO-CARATACHEA-BUENO.png');
INSERT INTO `verificadores` VALUES (15, 'FLORENTINO', 'CARDENAS', 'PEREZ', 'FLORENTINO CARDENAS PEREZ', NULL, 2, 5, 2, 'FLORENTINO-CARDENAS-PEREZ.png');
INSERT INTO `verificadores` VALUES (16, 'MIGUEL', 'CIPRES', 'BOTELLO', 'MIGUEL CIPRES BOTELLO', NULL, 2, 5, 2, 'MIGUEL-CIPRES-BOTELLO.png');
INSERT INTO `verificadores` VALUES (17, 'EDUARDO', 'DIAZ', 'MARTINEZ', 'EDUARDO DIAZ MARTINEZ', NULL, 2, 5, 2, 'EDUARDO-DIAZ-MARTINEZ.png');
INSERT INTO `verificadores` VALUES (18, 'JORGE', 'GALINDO', 'AYALA', 'JORGE GALINDO AYALA', NULL, 2, 5, 2, 'JORGE-GALINDO-AYALA.png');
INSERT INTO `verificadores` VALUES (19, 'CARLOS ALBERTO', 'GONZALEZ', 'TINOCO', 'CARLOS ALBERTO GONZALEZ TINOCO', NULL, 2, 5, 2, 'CARLOS ALBERTO-GONZALEZ-TINOCO.png');
INSERT INTO `verificadores` VALUES (20, 'ALFONSO', 'GUILLEN', 'ROMAN', 'ALFONSO GUILLEN ROMAN', NULL, 2, 5, 2, 'ALFONSO-GUILLEN-ROMAN.png');
INSERT INTO `verificadores` VALUES (21, 'RAMIRO', 'HERNANDEZ', 'ALVAREZ', 'RAMIRO HERNANDEZ ALVAREZ', NULL, 2, 5, 2, 'RAMIRO-HERNANDEZ-ALVAREZ.png');
INSERT INTO `verificadores` VALUES (22, 'WILVER ENRIQUE', 'HERNANDEZ', 'OCAÑA', 'WILVER ENRIQUE HERNANDEZ OCAÑA', NULL, 2, 5, 2, 'WILVER ENRIQUE-HERNANDEZ-OCAÑA.png');
INSERT INTO `verificadores` VALUES (23, 'IGNACIO', 'LOPEZ', 'DE JESUS', 'IGNACIO LOPEZ DE JESUS', NULL, 2, 5, 2, 'IGNACIO-LOPEZ-DE JESUS.png');
INSERT INTO `verificadores` VALUES (24, 'J. DOLORES JORDAN', 'LOZA', 'Y FARIAS', 'J. DOLORES JORDAN LOZA Y FARIAS', NULL, 2, 5, 2, 'J. DOLORES JORDAN-LOZA-Y FARIAS.png');
INSERT INTO `verificadores` VALUES (25, 'GUILLERMO', 'MAGAÑA', 'RANGEL', 'GUILLERMO MAGAÑA RANGEL', NULL, 2, 5, 2, 'GUILLERMO-MAGAÑA-RANGEL.png');
INSERT INTO `verificadores` VALUES (26, 'JOSE ANTONIO', 'MAGAÑA', 'RESENDIZ', 'JOSE ANTONIO MAGAÑA RESENDIZ', NULL, 2, 5, 2, 'JOSE ANTONIO-MAGAÑA-RESENDIZ.png');
INSERT INTO `verificadores` VALUES (27, 'MIGUEL', 'MURGUIA', 'AGUIRRE', 'MIGUEL MURGUIA AGUIRRE', NULL, 2, 5, 2, 'MIGUEL-MURGUIA-AGUIRRE.png');
INSERT INTO `verificadores` VALUES (28, 'JOSE LUIS', 'PAÑEDA', 'ZAVALA', 'JOSE LUIS PAÑEDA ZAVALA', NULL, 2, 5, 2, 'JOSE LUIS-PAÑEDA-ZAVALA.png');
INSERT INTO `verificadores` VALUES (29, 'JOSE ANTONIO', 'PAZ', 'PAZ', 'JOSE ANTONIO PAZ PAZ', NULL, 2, 5, 2, 'JOSE ANTONIO-PAZ-PAZ.png');
INSERT INTO `verificadores` VALUES (30, 'HERIBERTO', 'RODRIGUEZ', 'FALCON', 'HERIBERTO RODRIGUEZ FALCON', NULL, 2, 5, 2, 'HERIBERTO-RODRIGUEZ-FALCON.png');
INSERT INTO `verificadores` VALUES (31, 'ERICK ALBERTO', 'ROSAS', 'VAZQUEZ', 'ERICK ALBERTO ROSAS VAZQUEZ', NULL, 2, 5, 2, 'ERICK ALBERTO-ROSAS-VAZQUEZ.png');
INSERT INTO `verificadores` VALUES (32, 'LUIS MARTIN', 'TELLEZ', 'BECERRA', 'LUIS MARTIN TELLEZ BECERRA', NULL, 2, 5, 2, 'LUIS MARTIN-TELLEZ-BECERRA.png');
INSERT INTO `verificadores` VALUES (33, 'SALVADOR', 'TELLEZ', 'MEDINA', 'SALVADOR TELLEZ MEDINA', NULL, 2, 5, 2, 'SALVADOR-TELLEZ-MEDINA.png');
INSERT INTO `verificadores` VALUES (34, 'DANIEL OSVALDO', 'TELLO', 'CERVANTES', 'DANIEL OSVALDO TELLO CERVANTES', NULL, 2, 5, 2, 'DANIEL OSVALDO-TELLO-CERVANTES.png');
INSERT INTO `verificadores` VALUES (35, 'JESUS', 'URBINA', 'ESQUIVEL', 'JESUS URBINA ESQUIVEL', NULL, 2, 5, 2, 'JESUS-URBINA-ESQUIVEL.png');
INSERT INTO `verificadores` VALUES (36, 'JORGE ALEJANDRO', 'VALENTIN', 'MARTINEZ', 'JORGE ALEJANDRO VALENTIN MARTINEZ', NULL, 2, 5, 2, 'JORGE ALEJANDRO-VALENTIN-MARTINEZ.png');
INSERT INTO `verificadores` VALUES (37, 'EDUARDO', 'VALLADARES', 'ESPIRITU', 'EDUARDO VALLADARES ESPIRITU', NULL, 2, 5, 2, 'EDUARDO-VALLADARES-ESPIRITU.png');
INSERT INTO `verificadores` VALUES (38, 'ERNESTO', 'VALLES', 'RICO', 'ERNESTO VALLES RICO', NULL, 2, 5, 2, 'ERNESTO-VALLES-RICO.png');
INSERT INTO `verificadores` VALUES (39, 'GERARDO', 'CHAVEZ', 'GARCIA', 'GERARDO CHAVEZ GARCIA', NULL, 2, 5, 3, 'GERARDO-CHAVEZ-GARCIA.png');
INSERT INTO `verificadores` VALUES (40, 'GONZALO ELIGIO', 'ORTIZ', 'GOMEZ', 'GONZALO ELIGIO ORTIZ GOMEZ', NULL, 2, 5, 3, 'GONZALO ELIGIO-ORTIZ-GOMEZ.png');
INSERT INTO `verificadores` VALUES (41, 'EDGAR DARIO', 'PALLARES', 'RAMOS', 'EDGAR DARIO PALLARES RAMOS', NULL, 2, 5, 3, 'EDGAR DARIO-PALLARES-RAMOS.png');
INSERT INTO `verificadores` VALUES (42, 'JAIME', 'RANGEL', 'ROMERO', 'JAIME RANGEL ROMERO', NULL, 2, 5, 3, 'JAIME-RANGEL-ROMERO.png');
INSERT INTO `verificadores` VALUES (43, 'MARIO ALBERTO', 'SOLIS', 'SERENO', 'MARIO ALBERTO SOLIS SERENO', NULL, 2, 5, 3, 'MARIO ALBERTO-SOLIS-SERENO.png');
INSERT INTO `verificadores` VALUES (44, 'DANIEL', 'LEON', 'LOPEZ', 'DANIEL LEON LOPEZ', NULL, 2, 5, 4, 'DANIEL-LEON-LOPEZ.png');
INSERT INTO `verificadores` VALUES (45, 'CESAR RAFAEL', 'LOPEZ', 'VIVANCO', 'CESAR RAFAEL LOPEZ VIVANCO', NULL, 2, 5, 4, 'CESAR RAFAEL-LOPEZ-VIVANCO.png');
INSERT INTO `verificadores` VALUES (46, 'ERIKKA LISBOA', 'MENDEZ', 'BUSTOS', 'ERIKKA LISBOA MENDEZ BUSTOS', NULL, 2, 5, 4, 'ERIKKA LISBOA-MENDEZ-BUSTOS.png');
INSERT INTO `verificadores` VALUES (47, 'HENOC JAFET', 'VALENCIA', 'ORTIZ', 'HENOC JAFET VALENCIA ORTIZ', NULL, 2, 5, 4, 'HENOC JAFET-VALENCIA-ORTIZ.png');
INSERT INTO `verificadores` VALUES (48, 'VICTOR HUGO', 'VAZQUEZ', 'MARTINEZ', 'VICTOR HUGO VAZQUEZ MARTINEZ', NULL, 2, 5, 4, 'VICTOR HUGO-VAZQUEZ-MARTINEZ.png');
INSERT INTO `verificadores` VALUES (49, 'GONZALO ALEJANDRO', 'AGUERO', 'MORENO', 'GONZALO ALEJANDRO AGUERO MORENO', NULL, 13, 31, 5, 'GONZALO ALEJANDRO-AGUERO-MORENO.png');
INSERT INTO `verificadores` VALUES (50, 'JOSE GUADALUPE', 'VELAZQUEZ', 'ARROYO', 'JOSE GUADALUPE VELAZQUEZ ARROYO', NULL, 13, 31, 5, 'JOSE GUADALUPE-VELAZQUEZ-ARROYO.png');
INSERT INTO `verificadores` VALUES (51, 'JOSE MANUEL', 'MARQUEZ', 'CORTES', 'JOSE MANUEL MARQUEZ CORTES', NULL, 9, 19, 1, 'JOSE MANUEL-MARQUEZ-CORTES.png');
INSERT INTO `verificadores` VALUES (52, 'RICH', 'VAZQUEZ', 'RENTERIA', 'RICH VAZQUEZ RENTERIA', NULL, 9, 19, 1, 'RICH-VAZQUEZ-RENTERIA.png');
INSERT INTO `verificadores` VALUES (53, 'REGULO FELIPE', 'ROBLEDO', 'ORTIZ', 'REGULO FELIPE ROBLEDO ORTIZ', NULL, 9, 19, 6, 'REGULO FELIPE-ROBLEDO-ORTIZ.png');
INSERT INTO `verificadores` VALUES (54, 'EDUARDO', 'ZAMUDIO', 'MANDUJANO', 'EDUARDO ZAMUDIO MANDUJANO', NULL, 9, 19, 7, 'EDUARDO-ZAMUDIO-MANDUJANO.png');
INSERT INTO `verificadores` VALUES (55, 'JOSE LUIS', 'MONTAÑEZ', 'GUERRERO', 'JOSE LUIS MONTAÑEZ GUERRERO', NULL, 9, 19, 1, 'JOSE LUIS-MONTAÑEZ-GUERRERO.png');
INSERT INTO `verificadores` VALUES (56, 'RAFAEL IGNACIO', 'NARES', 'HEREDIA', 'RAFAEL IGNACIO NARES HEREDIA', NULL, 9, 19, 1, 'RAFAEL IGNACIO-NARES-HEREDIA.png');
INSERT INTO `verificadores` VALUES (57, 'CESAR IVAN', 'ARCHUNDIA', 'ORTIZ', 'CESAR IVAN ARCHUNDIA ORTIZ', NULL, 9, 19, 8, 'CESAR IVAN-ARCHUNDIA-ORTIZ.png');
INSERT INTO `verificadores` VALUES (58, 'SALVADOR', 'GONZALEZ', 'VILLAGOMEZ', 'SALVADOR GONZALEZ VILLAGOMEZ', NULL, 9, 19, 6, 'SALVADOR-GONZALEZ-VILLAGOMEZ.png');
INSERT INTO `verificadores` VALUES (59, 'JOSE ANTONIO', 'PAZ', 'DAVALOS', 'JOSE ANTONIO PAZ DAVALOS', NULL, 9, 19, 9, 'JOSE ANTONIO-PAZ-DAVALOS.png');
INSERT INTO `verificadores` VALUES (60, 'FRANCISCO JAVIER', 'PAZ', 'ROBLES', 'FRANCISCO JAVIER PAZ ROBLES', NULL, 9, 19, 9, 'FRANCISCO JAVIER-PAZ-ROBLES.png');
INSERT INTO `verificadores` VALUES (61, 'ZHAURI SINUE', 'TOVAR', 'MENDOZA', 'ZHAURI SINUE TOVAR MENDOZA', NULL, 9, 19, 9, 'ZHAURI SINUE-TOVAR-MENDOZA.png');
INSERT INTO `verificadores` VALUES (62, 'HUGO GERARDO', 'GARCIA', 'RIVERA', 'HUGO GERARDO GARCIA RIVERA', NULL, 9, 19, 10, 'HUGO GERARDO-GARCIA-RIVERA.png');
INSERT INTO `verificadores` VALUES (63, 'JULIO CESAR', 'GUTIERREZ', 'GUTIERREZ', 'JULIO CESAR GUTIERREZ GUTIERREZ', NULL, 9, 19, 10, 'JULIO CESAR-GUTIERREZ-GUTIERREZ.png');
INSERT INTO `verificadores` VALUES (64, 'ROBERTO CARLOS', 'AVILA', 'PEREZ', 'ROBERTO CARLOS AVILA PEREZ', NULL, 9, 20, 11, 'ROBERTO CARLOS-AVILA-PEREZ.png');
INSERT INTO `verificadores` VALUES (65, 'SALVADOR IVANOSKY', 'CORONA', 'MENDOZA', 'SALVADOR IVANOSKY CORONA MENDOZA', NULL, 9, 20, 12, 'SALVADOR IVANOSKY-CORONA-MENDOZA.png');
INSERT INTO `verificadores` VALUES (66, 'ADOLFO', 'DURAN', 'AMBRIZ', 'ADOLFO DURAN AMBRIZ', NULL, 9, 20, 12, 'ADOLFO-DURAN-AMBRIZ.png');
INSERT INTO `verificadores` VALUES (67, 'JORGE HUMBERTO', 'JUAREZ', 'AVILA', 'JORGE HUMBERTO JUAREZ AVILA', NULL, 9, 20, 12, 'JORGE HUMBERTO-JUAREZ-AVILA.png');
INSERT INTO `verificadores` VALUES (68, 'FRANCISCO RAUL', 'ORTIZ', 'RODRIGUEZ', 'FRANCISCO RAUL ORTIZ RODRIGUEZ', NULL, 9, 20, 12, 'FRANCISCO RAUL-ORTIZ-RODRIGUEZ.png');
INSERT INTO `verificadores` VALUES (69, 'ROBERTO', 'RODRIGUEZ', 'ARRIAGA', 'ROBERTO RODRIGUEZ ARRIAGA', NULL, 9, 20, 12, 'ROBERTO-RODRIGUEZ-ARRIAGA.png');
INSERT INTO `verificadores` VALUES (70, 'JOSE ANTONIO', 'ROSAS', 'ANGEL', 'JOSE ANTONIO ROSAS ANGEL', NULL, 9, 20, 12, 'JOSE ANTONIO-ROSAS-ANGEL.png');
INSERT INTO `verificadores` VALUES (71, 'JORGE OSIRIS', 'TOVAR', 'MENDOZA', 'JORGE OSIRIS TOVAR MENDOZA', NULL, 9, 20, 12, 'JORGE OSIRIS-TOVAR-MENDOZA.png');
INSERT INTO `verificadores` VALUES (72, 'JAVIER DANIEL', 'VEGA', 'TORRES', 'JAVIER DANIEL VEGA TORRES', NULL, 9, 20, 12, 'JAVIER DANIEL-VEGA-TORRES.png');
INSERT INTO `verificadores` VALUES (73, 'ERNESTO', 'BARRIGA', 'ACOSTA', 'ERNESTO BARRIGA ACOSTA', NULL, 9, 20, 8, 'ERNESTO-BARRIGA-ACOSTA.png');
INSERT INTO `verificadores` VALUES (74, 'HECTOR', 'CASTRO', 'CERVANTES', 'HECTOR CASTRO CERVANTES', NULL, 9, 20, 8, 'HECTOR-CASTRO-CERVANTES.png');
INSERT INTO `verificadores` VALUES (75, 'CHRISTIAN GERARDO', 'CHAVEZ', 'AVALOS', 'CHRISTIAN GERARDO CHAVEZ AVALOS', NULL, 9, 20, 8, 'CHRISTIAN GERARDO-CHAVEZ-AVALOS.png');
INSERT INTO `verificadores` VALUES (76, 'ROGELIO', 'ESTRADA', 'GONZALEZ', 'ROGELIO ESTRADA GONZALEZ', NULL, 9, 20, 8, 'ROGELIO-ESTRADA-GONZALEZ.png');
INSERT INTO `verificadores` VALUES (77, 'CARLOS EDUARDO', 'MARES', 'URIBE', 'CARLOS EDUARDO MARES URIBE', NULL, 9, 20, 8, 'CARLOS EDUARDO-MARES-URIBE.png');
INSERT INTO `verificadores` VALUES (78, 'JULIO IVAN', 'MEDINA', 'RUIZ', 'JULIO IVAN MEDINA RUIZ', NULL, 9, 20, 8, 'JULIO IVAN-MEDINA-RUIZ.png');
INSERT INTO `verificadores` VALUES (79, 'SERGIO', 'MORA', 'SALGADO', 'SERGIO MORA SALGADO', NULL, 9, 20, 8, 'SERGIO-MORA-SALGADO.png');
INSERT INTO `verificadores` VALUES (80, 'MARCO ANTONIO', 'PINEDA', 'MARTINEZ', 'MARCO ANTONIO PINEDA MARTINEZ', NULL, 9, 20, 8, 'MARCO ANTONIO-PINEDA-MARTINEZ.png');
INSERT INTO `verificadores` VALUES (81, 'ERIK', 'RODRIGUEZ', 'CARRILLO', 'ERIK RODRIGUEZ CARRILLO', NULL, 9, 20, 8, 'ERIK-RODRIGUEZ-CARRILLO.png');
INSERT INTO `verificadores` VALUES (82, 'CUITLAHUAC CUAUHTEMOC', 'ARIAS', 'MONTES', 'CUITLAHUAC CUAUHTEMOC ARIAS MONTES', NULL, 10, 22, 8, 'CUITLAHUAC CUAUHTEMOC-ARIAS-MONTES.png');
INSERT INTO `verificadores` VALUES (83, 'GERARDO', 'BECERRA', 'CARRILLO', 'GERARDO BECERRA CARRILLO', NULL, 10, 22, 13, 'GERARDO-BECERRA-CARRILLO.png');
INSERT INTO `verificadores` VALUES (84, 'JOSE HUGO', 'GUERRERO', 'PACHECO', 'JOSE HUGO GUERRERO PACHECO', NULL, 10, 23, 14, 'JOSE HUGO-GUERRERO-PACHECO.png');
INSERT INTO `verificadores` VALUES (85, 'Martin', 'Alfaro', 'Huanosto', 'Martin Alfaro Huanosto', '000', 17, NULL, 15, 'Martin-Alfaro-Huanosto.png');
INSERT INTO `verificadores` VALUES (86, 'Heriberto', 'Barriga', 'Torres', 'Heriberto Barriga Torres', '000', 17, NULL, 16, 'Heriberto-Barriga-Torres.png');
INSERT INTO `verificadores` VALUES (87, 'Sergio', 'Campos', 'Acuña', 'Sergio Campos Acuña', '000', 17, NULL, 15, 'Sergio-Campos-Acuña.png');
INSERT INTO `verificadores` VALUES (88, 'Leobardo', 'Fernandez', 'Paredes', 'Leobardo Fernandez Paredes', '000', 17, NULL, 17, 'Leobardo-Fernandez-Paredes.png');
INSERT INTO `verificadores` VALUES (89, 'Gerardo', 'Gaytan', 'Pineda', 'Gerardo Gaytan Pineda', '000', 17, NULL, 7, 'Gerardo-Gaytan-Pineda.png');
INSERT INTO `verificadores` VALUES (90, 'Juan Gabriel', 'Gonzalez', 'Chavez', 'Juan Gabriel Gonzalez Chavez', '000', 17, NULL, 18, 'Juan Gabriel-Gonzalez-Chavez.png');
INSERT INTO `verificadores` VALUES (91, 'Sergio German', 'Gonzalez', 'Serano', 'Sergio German Gonzalez Serano', '000', 17, NULL, 15, 'Sergio German-Gonzalez-Serano.png');
INSERT INTO `verificadores` VALUES (92, 'Alvaro Francisco', 'Lopez', 'Orozco', 'Alvaro Francisco Lopez Orozco', '000', 17, NULL, 19, 'Alvaro Francisco-Lopez-Orozco.png');
INSERT INTO `verificadores` VALUES (93, 'Miguel', 'Pacheco', 'Soria', 'Miguel Pacheco Soria', '000', 17, NULL, 20, 'Miguel-Pacheco-Soria.png');
INSERT INTO `verificadores` VALUES (94, 'Roberto', 'Paramo', 'Fernandez', 'Roberto Paramo Fernandez', '000', 17, NULL, 21, 'Roberto-Paramo-Fernandez.png');
INSERT INTO `verificadores` VALUES (95, 'Francisco Samuel', 'Saenz', 'Vilchis', 'Francisco Samuel Saenz Vilchis', '000', 17, NULL, 22, 'Francisco Samuel-Saenz-Vilchis.png');
INSERT INTO `verificadores` VALUES (96, 'Nicolas', 'Vargas', 'Garcia', 'Nicolas Vargas Garcia', '000', 17, NULL, 22, 'Nicolas-Vargas-Garcia.png');
INSERT INTO `verificadores` VALUES (97, 'Salvador', 'Gonzalez', 'Serano', 'Salvador Gonzalez Serano', '000', 17, NULL, 23, 'Salvador-Gonzalez-Serano.png');
INSERT INTO `verificadores` VALUES (98, 'Fernando', 'Rico', 'Lagunas', 'Fernando Rico Lagunas', '000', 17, NULL, 15, 'Fernando-Rico-Lagunas.png');
INSERT INTO `verificadores` VALUES (99, 'Abraham', 'Huerta', 'Oseguera', 'Abraham Huerta Oseguera', '000', 17, NULL, 15, 'Abraham-Huerta-Oseguera.png');
INSERT INTO `verificadores` VALUES (100, 'Jose Saul', 'Guillen', 'Barriga', 'Jose Saul Guillen Barriga', '000', 17, NULL, 23, 'Jose Saul-Guillen-Barriga.png');
INSERT INTO `verificadores` VALUES (101, 'Alberto', 'Diaz', 'Avila', 'Alberto Diaz Avila', '000', 17, NULL, 24, 'Alberto-Diaz-Avila.png');
INSERT INTO `verificadores` VALUES (102, 'Jesus Manuel', 'Zaragoza', '.', 'Jesus Manuel Zaragoza .', '000', 17, NULL, 25, 'Jesus Manuel-Zaragoza-..png');
INSERT INTO `verificadores` VALUES (103, 'Manuel', 'De La Torre', 'Mendez', 'Manuel De La Torre Mendez', '000', 17, NULL, 23, 'Manuel-De La Torre-Mendez.png');
INSERT INTO `verificadores` VALUES (104, 'Adriana', 'Vidales', 'Landin', 'Adriana Vidales Landin', '000', 17, NULL, 23, 'Adriana-Vidales-Landin.png');
INSERT INTO `verificadores` VALUES (105, 'Gregorio', 'Vilchis', 'Beltran', 'Gregorio Vilchis Beltran', '000', 17, NULL, 15, 'Gregorio-Vilchis-Beltran.png');
INSERT INTO `verificadores` VALUES (106, 'Patricia Teresa', 'Martinez', 'Urtiz', 'Patricia Teresa Martinez Urtiz', '000', 17, NULL, 21, 'Patricia Teresa-Martinez-Urtiz.png');
INSERT INTO `verificadores` VALUES (107, 'Ma De Los Angeles', 'Piñon', 'Ramos', 'Ma De Los Angeles Piñon Ramos', '000', 17, NULL, 23, 'Ma De Los Angeles-Piñon-Ramos.png');
INSERT INTO `verificadores` VALUES (108, 'Alfredo', 'Rocha', 'Alvarado', 'Alfredo Rocha Alvarado', '000', 17, NULL, 26, 'Alfredo-Rocha-Alvarado.png');
INSERT INTO `verificadores` VALUES (109, 'Eduardo', 'Martinez', 'Correa', 'Eduardo Martinez Correa', '000', 17, NULL, 15, 'Eduardo-Martinez-Correa.png');
INSERT INTO `verificadores` VALUES (110, 'Luis', 'Reyes', 'Arellano', 'Luis Reyes Arellano', '000', 17, NULL, 25, 'Luis-Reyes-Arellano.png');
INSERT INTO `verificadores` VALUES (111, 'Juan Carlos', 'Tapia', 'Lopez', 'Juan Carlos Tapia Lopez', '000', 17, NULL, 21, 'Juan Carlos-Tapia-Lopez.png');
INSERT INTO `verificadores` VALUES (112, 'Dante', 'Ceron', 'Perez', 'Dante Ceron Perez', '000', 17, NULL, 27, 'Dante-Ceron-Perez.png');
INSERT INTO `verificadores` VALUES (113, 'Jose Luis', 'Acosta', 'Bribiesca', 'Jose Luis Acosta Bribiesca', '000', 17, NULL, 23, 'Jose Luis-Acosta-Bribiesca.png');
INSERT INTO `verificadores` VALUES (114, 'Rodrigo Daniel', 'Tovar', 'Villagomez', 'Rodrigo Daniel Tovar Villagomez', '000', 17, NULL, 27, 'Rodrigo Daniel-Tovar-Villagomez.png');
INSERT INTO `verificadores` VALUES (115, 'Jorge Luis', 'Lopez', 'Lucas', 'Jorge Luis Lopez Lucas', '000', 17, NULL, 17, 'Jorge Luis-Lopez-Lucas.png');
INSERT INTO `verificadores` VALUES (116, 'Javier', 'Solis', 'Solis', 'Javier Solis Solis', '000', 17, NULL, 21, 'Javier-Solis-Solis.png');
INSERT INTO `verificadores` VALUES (117, 'Mario', 'Ortiz', 'Rivera', 'Mario Ortiz Rivera', '000', 17, NULL, 15, 'Mario-Ortiz-Rivera.png');
INSERT INTO `verificadores` VALUES (118, 'Fatima Elizabeth', 'Gutierrez', 'Espinoza', 'Fatima Elizabeth Gutierrez Espinoza', '000', 17, NULL, 21, 'Fatima Elizabeth-Gutierrez-Espinoza.png');
INSERT INTO `verificadores` VALUES (119, 'Gerardo Rafael', 'Candelario', 'Damian', 'Gerardo Rafael Candelario Damian', '000', 17, NULL, 28, 'Gerardo Rafael-Candelario-Damian.png');
INSERT INTO `verificadores` VALUES (120, 'Edgar Armando', 'Herrera', 'Equihua', 'Edgar Armando Herrera Equihua', '000', 17, NULL, 27, 'Edgar Armando-Herrera-Equihua.png');
INSERT INTO `verificadores` VALUES (121, 'Norma Leticia', 'Lagunas', 'Tapia', 'Norma Leticia Lagunas Tapia', '000', 17, NULL, 21, 'Norma Leticia-Lagunas-Tapia.png');
INSERT INTO `verificadores` VALUES (122, 'Maria Concepcion', 'Espinoza', 'Sanchez', 'Maria Concepcion Espinoza Sanchez', '000', 17, NULL, 21, 'Maria Concepcion-Espinoza-Sanchez.png');
INSERT INTO `verificadores` VALUES (123, 'Salvador', 'Garcia', 'Villaseñor', 'Salvador Garcia Villaseñor', '000', 17, NULL, 29, 'Salvador-Garcia-Villaseñor.png');
INSERT INTO `verificadores` VALUES (124, 'Alma Angelica', 'Gonzalez', 'Barrera', 'Alma Angelica Gonzalez Barrera', '000', 17, NULL, 30, 'Alma Angelica-Gonzalez-Barrera.png');
INSERT INTO `verificadores` VALUES (125, 'Filiberto', 'Avila', 'Zaragoza', 'Filiberto Avila Zaragoza', '000', 17, NULL, 27, 'Filiberto-Avila-Zaragoza.png');
INSERT INTO `verificadores` VALUES (126, 'Alberto', 'Reyes', 'Guizar', 'Alberto Reyes Guizar', '000', 17, NULL, 21, 'Alberto-Reyes-Guizar.png');
INSERT INTO `verificadores` VALUES (127, 'Daniela', 'Sotelo', 'Hernandez', 'Daniela Sotelo Hernandez', '000', 17, NULL, 21, 'Daniela-Sotelo-Hernandez.png');
INSERT INTO `verificadores` VALUES (128, 'Luis Ivan', 'Anguiano', 'Martinez', 'Luis Ivan Anguiano Martinez', '000', 17, NULL, 21, 'Luis Ivan-Anguiano-Martinez.png');
INSERT INTO `verificadores` VALUES (129, 'Uriel Omar', 'Miguel', 'Esparza', 'Uriel Omar Miguel Esparza', '000', 17, NULL, 31, 'Uriel Omar-Miguel-Esparza.png');
INSERT INTO `verificadores` VALUES (130, 'Jesus Angel', 'Alvarado', 'Sánchez', 'Jesus Angel Alvarado Sánchez', '000', 17, NULL, 32, 'Jesus Angel-Alvarado-Sánchez.png');
INSERT INTO `verificadores` VALUES (131, 'Merari Betsabe', 'Garcia', 'Villaseñor', 'Merari Betsabe Garcia Villaseñor', '000', 17, NULL, 32, 'Merari Betsabe-Garcia-Villaseñor.png');
INSERT INTO `verificadores` VALUES (132, 'Maria De Los Angeles', 'Talavera', 'Sanchez', 'Maria De Los Angeles Talavera Sanchez', '000', 17, NULL, 32, 'Maria De Los Angeles-Talavera-Sanchez.png');
INSERT INTO `verificadores` VALUES (133, 'Luis Joaquin', 'Gutierrez', 'Muciño', 'Luis Joaquin Gutierrez Muciño', '000', 17, NULL, 33, 'Luis Joaquin-Gutierrez-Muciño.png');

SET FOREIGN_KEY_CHECKS = 1;
