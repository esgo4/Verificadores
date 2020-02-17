/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : verificadores

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 16/02/2020 23:20:59
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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of direcciones
-- ----------------------------
INSERT INTO `direcciones` VALUES (1, 'Dirección de Patrimonio Municipal', 1, 1);
INSERT INTO `direcciones` VALUES (2, 'Dirección de Mediación y Conciliación Municipal', 1, 1);
INSERT INTO `direcciones` VALUES (3, 'Unidad de Transparencia', 1, 1);
INSERT INTO `direcciones` VALUES (4, 'Dirección de Protección Civil', 1, 2);
INSERT INTO `direcciones` VALUES (5, 'Dirección de Reglamentación y Verificación', 1, 2);
INSERT INTO `direcciones` VALUES (6, 'Dirección de Gobierno y Participación Ciudadana', 1, 2);
INSERT INTO `direcciones` VALUES (7, 'Dirección de Relaciones Públicas', 1, 5);
INSERT INTO `direcciones` VALUES (8, 'Dirección de Comunicación Social', 1, 5);
INSERT INTO `direcciones` VALUES (9, 'Oficina de Asuntos Internacionales y Atención al Migrante', 1, 5);
INSERT INTO `direcciones` VALUES (10, 'Oficina Técnica', 1, 5);
INSERT INTO `direcciones` VALUES (11, 'Oficina de Atención Ciudadana', 1, 5);
INSERT INTO `direcciones` VALUES (12, 'Dirección de Recursos Humanos', 1, 6);
INSERT INTO `direcciones` VALUES (13, 'Dirección de Adquisiciones y Arrendamientos', 1, 6);
INSERT INTO `direcciones` VALUES (14, 'Dirección de Taller de Mantenimiento', 1, 6);
INSERT INTO `direcciones` VALUES (15, 'Dirección de Desarrollo Organizacional', 1, 6);
INSERT INTO `direcciones` VALUES (16, 'Dirección de Servicios Generales', 1, 6);
INSERT INTO `direcciones` VALUES (17, 'Dirección de Policía Preventiva', 1, 7);
INSERT INTO `direcciones` VALUES (18, 'Dirección de Tránsito Municipal', 1, 7);
INSERT INTO `direcciones` VALUES (19, 'Oficina de Prevención Social y Participación Ciudadana', 1, 7);
INSERT INTO `direcciones` VALUES (20, 'Dirección de Asesores Jurídicos', 1, 8);
INSERT INTO `direcciones` VALUES (21, 'Dirección de Investigación, Formulación y Gestión de Proyectos', 1, 9);
INSERT INTO `direcciones` VALUES (22, 'Dirección de Evaluación e Información Estadística', 1, 9);
INSERT INTO `direcciones` VALUES (23, 'Dirección de Sistemas Informáticos', 1, 9);
INSERT INTO `direcciones` VALUES (24, 'Dirección de Construcción', 1, 10);
INSERT INTO `direcciones` VALUES (25, 'Dirección de Mantenimiento y Conservación', 1, 10);
INSERT INTO `direcciones` VALUES (26, 'Dirección de Panteones, Crematorio y Mercados Municipales', 1, 10);
INSERT INTO `direcciones` VALUES (27, 'Dirección de Desarrollo Urbano', 1, 11);
INSERT INTO `direcciones` VALUES (28, 'Dirección de Vivienda', 1, 11);
INSERT INTO `direcciones` VALUES (29, 'Dirección de Espacios Públicos', 1, 11);
INSERT INTO `direcciones` VALUES (30, 'Dirección de Parques y Jardines', 1, 12);
INSERT INTO `direcciones` VALUES (31, 'Dirección de Recursos Naturales y Normatividad Ambiental', 1, 12);
INSERT INTO `direcciones` VALUES (32, 'Dirección de Sanidad y Limpia', 1, 12);
INSERT INTO `direcciones` VALUES (33, 'Dirección de Alumbrado Público', 1, 12);
INSERT INTO `direcciones` VALUES (34, 'Instituto Municipal de la Mujer', 1, 13);
INSERT INTO `direcciones` VALUES (35, 'Dirección de Diversidad Sexual', 1, 13);
INSERT INTO `direcciones` VALUES (36, 'Instituto Municipal de la Juventud', 1, 13);
INSERT INTO `direcciones` VALUES (37, 'Dirección de Atención Integral y Protección a los Derechos de las Mujeres, Niños y Niñas.', 0, 13);
INSERT INTO `direcciones` VALUES (38, 'Dirección de Padrón de Licencias y Giros Mercantiles', 1, 14);
INSERT INTO `direcciones` VALUES (39, 'Dirección de Vinculación Empresarial', 1, 14);
INSERT INTO `direcciones` VALUES (40, 'Dirección de Desarrollo Rural', 1, 15);
INSERT INTO `direcciones` VALUES (41, 'Dirección de Desarrollo Zona Urbana', 1, 15);
INSERT INTO `direcciones` VALUES (42, 'Dirección de Educación', 1, 15);
INSERT INTO `direcciones` VALUES (43, 'Dirección de Asuntos Indígenas', 1, 15);
INSERT INTO `direcciones` VALUES (44, 'Dirección de Salud', 1, 15);
INSERT INTO `direcciones` VALUES (45, 'Dirección de Proyectos Productivos', 1, 15);
INSERT INTO `direcciones` VALUES (46, 'Instituto Municipal del Deporte', 1, 15);
INSERT INTO `direcciones` VALUES (47, 'Dirección de Turismo', 1, 16);
INSERT INTO `direcciones` VALUES (48, 'Dirección de Cultura', 1, 16);

-- ----------------------------
-- Table structure for secretarias
-- ----------------------------
DROP TABLE IF EXISTS `secretarias`;
CREATE TABLE `secretarias`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activo` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `secretarias` VALUES (8, 'Secretaría Jurídica', 1);
INSERT INTO `secretarias` VALUES (9, 'Secretaría de Planeación', 1);
INSERT INTO `secretarias` VALUES (10, 'Secretaría de Obras Públicas y Servicios', 1);
INSERT INTO `secretarias` VALUES (11, 'Secretaría de Desarrollo Urbano', 1);
INSERT INTO `secretarias` VALUES (12, 'Secretaría de Medio Ambiente', 1);
INSERT INTO `secretarias` VALUES (13, 'Secretaría de Perspectiva de Género e Inclusión', 1);
INSERT INTO `secretarias` VALUES (14, 'Secretaría de Fomento Económico', 1);
INSERT INTO `secretarias` VALUES (15, 'Secretaría de Desarrollo Social', 1);
INSERT INTO `secretarias` VALUES (16, 'Secretaría de Turismo y Cultura', 1);
INSERT INTO `secretarias` VALUES (17, 'DIF', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 253 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of verificadores
-- ----------------------------
INSERT INTO `verificadores` VALUES (169, 'AGUSTIN', 'PLANCARTE', 'MAGAÑA', 'AGUSTIN PLANCARTE MAGAÑA', '000', NULL, NULL, 1, 'AGUSTIN.PLANCARTE.MAGAÑA');
INSERT INTO `verificadores` VALUES (170, 'EMMA', 'BRAVO', 'RUBIO', 'EMMA BRAVO RUBIO', '000', 2, 5, 1, 'EMMA.BRAVO.RUBIO');
INSERT INTO `verificadores` VALUES (171, 'EDUARDO ALEJANDRO', 'OLALDE', 'RUIZ', 'EDUARDO ALEJANDRO OLALDE RUIZ', '000', 2, 5, 1, 'EDUARDO ALEJANDRO.OLALDE.RUIZ');
INSERT INTO `verificadores` VALUES (172, 'MIGUEL ANGEL', 'REYES', 'MENDEZ', 'MIGUEL ANGEL REYES MENDEZ', '000', 2, 5, 1, 'MIGUEL ANGEL.REYES.MENDEZ');
INSERT INTO `verificadores` VALUES (173, 'RAMIRO', 'RODRIGUEZ', 'AVILEZ', 'RAMIRO RODRIGUEZ AVILEZ', '000', 2, 5, 1, 'RAMIRO.RODRIGUEZ.AVILEZ');
INSERT INTO `verificadores` VALUES (174, 'HECTOR', 'SANCHEZ', 'BUCIO', 'HECTOR SANCHEZ BUCIO', NULL, 2, 5, 1, NULL);
INSERT INTO `verificadores` VALUES (175, 'GERARDO GIOVANNI', 'SANDOVAL', 'ARROYO', 'GERARDO GIOVANNI SANDOVAL ARROYO', NULL, 2, 5, 1, NULL);
INSERT INTO `verificadores` VALUES (176, 'ABDUL RENE', 'AGUILERA', 'BARAJAS', 'ABDUL RENE AGUILERA BARAJAS', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (177, 'ANA GABRIELA', 'ARTEAGA', 'VAZQUEZ', 'ANA GABRIELA ARTEAGA VAZQUEZ', '000', 2, 5, 2, 'anaarteaga.png');
INSERT INTO `verificadores` VALUES (178, 'LORENZO', 'BAUTISTA', 'SERVIN', 'LORENZO BAUTISTA SERVIN', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (179, 'JUAN PABLO', 'CALDERON', 'RUIZ', 'JUAN PABLO CALDERON RUIZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (180, 'IGNACIO', 'CAMARENA', 'MARTINEZ', 'IGNACIO CAMARENA MARTINEZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (181, 'RICARDO', 'CAMPOS', 'PACHECO', 'RICARDO CAMPOS PACHECO', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (182, 'CARLOS ALBERTO', 'CARATACHEA', 'BUENO', 'CARLOS ALBERTO CARATACHEA BUENO', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (183, 'FLORENTINO', 'CARDENAS', 'PEREZ', 'FLORENTINO CARDENAS PEREZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (184, 'MIGUEL', 'CIPRES', 'BOTELLO', 'MIGUEL CIPRES BOTELLO', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (185, 'EDUARDO', 'DIAZ', 'MARTINEZ', 'EDUARDO DIAZ MARTINEZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (186, 'JORGE', 'GALINDO', 'AYALA', 'JORGE GALINDO AYALA', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (187, 'CARLOS ALBERTO', 'GONZALEZ', 'TINOCO', 'CARLOS ALBERTO GONZALEZ TINOCO', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (188, 'ALFONSO', 'GUILLEN', 'ROMAN', 'ALFONSO GUILLEN ROMAN', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (189, 'RAMIRO', 'HERNANDEZ', 'ALVAREZ', 'RAMIRO HERNANDEZ ALVAREZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (190, 'WILVER ENRIQUE', 'HERNANDEZ', 'OCAÑA', 'WILVER ENRIQUE HERNANDEZ OCAÑA', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (191, 'IGNACIO', 'LOPEZ', 'DE JESUS', 'IGNACIO LOPEZ DE JESUS', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (192, 'J. DOLORES JORDAN', 'LOZA', 'Y FARIAS', 'J. DOLORES JORDAN LOZA Y FARIAS', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (193, 'GUILLERMO', 'MAGAÑA', 'RANGEL', 'GUILLERMO MAGAÑA RANGEL', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (194, 'JOSE ANTONIO', 'MAGAÑA', 'RESENDIZ', 'JOSE ANTONIO MAGAÑA RESENDIZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (195, 'MIGUEL', 'MURGUIA', 'AGUIRRE', 'MIGUEL MURGUIA AGUIRRE', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (196, 'JOSE LUIS', 'PAÑEDA', 'ZAVALA', 'JOSE LUIS PAÑEDA ZAVALA', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (197, 'JOSE ANTONIO', 'PAZ', 'PAZ', 'JOSE ANTONIO PAZ PAZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (198, 'HERIBERTO', 'RODRIGUEZ', 'FALCON', 'HERIBERTO RODRIGUEZ FALCON', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (199, 'ERICK ALBERTO', 'ROSAS', 'VAZQUEZ', 'ERICK ALBERTO ROSAS VAZQUEZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (200, 'LUIS MARTIN', 'TELLEZ', 'BECERRA', 'LUIS MARTIN TELLEZ BECERRA', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (201, 'SALVADOR', 'TELLEZ', 'MEDINA', 'SALVADOR TELLEZ MEDINA', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (202, 'DANIEL OSVALDO', 'TELLO', 'CERVANTES', 'DANIEL OSVALDO TELLO CERVANTES', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (203, 'JESUS', 'URBINA', 'ESQUIVEL', 'JESUS URBINA ESQUIVEL', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (204, 'JORGE ALEJANDRO', 'VALENTIN', 'MARTINEZ', 'JORGE ALEJANDRO VALENTIN MARTINEZ', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (205, 'EDUARDO', 'VALLADARES', 'ESPIRITU', 'EDUARDO VALLADARES ESPIRITU', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (206, 'ERNESTO', 'VALLES', 'RICO', 'ERNESTO VALLES RICO', NULL, 2, 5, 2, NULL);
INSERT INTO `verificadores` VALUES (207, 'GERARDO', 'CHAVEZ', 'GARCIA', 'GERARDO CHAVEZ GARCIA', NULL, 2, 5, 3, NULL);
INSERT INTO `verificadores` VALUES (208, 'GONZALO ELIGIO', 'ORTIZ', 'GOMEZ', 'GONZALO ELIGIO ORTIZ GOMEZ', NULL, 2, 5, 3, NULL);
INSERT INTO `verificadores` VALUES (209, 'EDGAR DARIO', 'PALLARES', 'RAMOS', 'EDGAR DARIO PALLARES RAMOS', NULL, 2, 5, 3, NULL);
INSERT INTO `verificadores` VALUES (210, 'JAIME', 'RANGEL', 'ROMERO', 'JAIME RANGEL ROMERO', NULL, 2, 5, 3, NULL);
INSERT INTO `verificadores` VALUES (211, 'MARIO ALBERTO', 'SOLIS', 'SERENO', 'MARIO ALBERTO SOLIS SERENO', NULL, 2, 5, 3, NULL);
INSERT INTO `verificadores` VALUES (212, 'DANIEL', 'LEON', 'LOPEZ', 'DANIEL LEON LOPEZ', NULL, 2, 5, 4, NULL);
INSERT INTO `verificadores` VALUES (213, 'CESAR RAFAEL', 'LOPEZ', 'VIVANCO', 'CESAR RAFAEL LOPEZ VIVANCO', NULL, 2, 5, 4, NULL);
INSERT INTO `verificadores` VALUES (214, 'ERIKKA LISBOA', 'MENDEZ', 'BUSTOS', 'ERIKKA LISBOA MENDEZ BUSTOS', NULL, 2, 5, 4, NULL);
INSERT INTO `verificadores` VALUES (215, 'HENOC JAFET', 'VALENCIA', 'ORTIZ', 'HENOC JAFET VALENCIA ORTIZ', NULL, 2, 5, 4, NULL);
INSERT INTO `verificadores` VALUES (216, 'VICTOR HUGO', 'VAZQUEZ', 'MARTINEZ', 'VICTOR HUGO VAZQUEZ MARTINEZ', NULL, 2, 5, 4, NULL);
INSERT INTO `verificadores` VALUES (217, 'GONZALO ALEJANDRO', 'AGUERO', 'MORENO', 'GONZALO ALEJANDRO AGUERO MORENO', NULL, 14, 38, 5, NULL);
INSERT INTO `verificadores` VALUES (218, 'JOSE GUADALUPE', 'VELAZQUEZ', 'ARROYO', 'JOSE GUADALUPE VELAZQUEZ ARROYO', NULL, 14, 38, 5, NULL);
INSERT INTO `verificadores` VALUES (219, 'JOSE MANUEL', 'MARQUEZ', 'CORTES', 'JOSE MANUEL MARQUEZ CORTES', NULL, 11, 27, 1, NULL);
INSERT INTO `verificadores` VALUES (220, 'RICH', 'VAZQUEZ', 'RENTERIA', 'RICH VAZQUEZ RENTERIA', NULL, 11, 27, 1, NULL);
INSERT INTO `verificadores` VALUES (221, 'REGULO FELIPE', 'ROBLEDO', 'ORTIZ', 'REGULO FELIPE ROBLEDO ORTIZ', NULL, 11, 27, 6, NULL);
INSERT INTO `verificadores` VALUES (222, 'EDUARDO', 'ZAMUDIO', 'MANDUJANO', 'EDUARDO ZAMUDIO MANDUJANO', NULL, 11, 27, 7, NULL);
INSERT INTO `verificadores` VALUES (223, 'JOSE LUIS', 'MONTAÑEZ', 'GUERRERO', 'JOSE LUIS MONTAÑEZ GUERRERO', NULL, NULL, NULL, 1, NULL);
INSERT INTO `verificadores` VALUES (224, 'RAFAEL IGNACIO', 'NARES', 'HEREDIA', 'RAFAEL IGNACIO NARES HEREDIA', NULL, NULL, NULL, 1, NULL);
INSERT INTO `verificadores` VALUES (225, 'CESAR IVAN', 'ARCHUNDIA', 'ORTIZ', 'CESAR IVAN ARCHUNDIA ORTIZ', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (226, 'SALVADOR', 'GONZALEZ', 'VILLAGOMEZ', 'SALVADOR GONZALEZ VILLAGOMEZ', NULL, NULL, NULL, 6, NULL);
INSERT INTO `verificadores` VALUES (227, 'JOSE ANTONIO', 'PAZ', 'DAVALOS', 'JOSE ANTONIO PAZ DAVALOS', NULL, NULL, NULL, 9, NULL);
INSERT INTO `verificadores` VALUES (228, 'FRANCISCO JAVIER', 'PAZ', 'ROBLES', 'FRANCISCO JAVIER PAZ ROBLES', NULL, NULL, NULL, 9, NULL);
INSERT INTO `verificadores` VALUES (229, 'ZHAURI SINUE', 'TOVAR', 'MENDOZA', 'ZHAURI SINUE TOVAR MENDOZA', NULL, NULL, NULL, 9, NULL);
INSERT INTO `verificadores` VALUES (230, 'HUGO GERARDO', 'GARCIA', 'RIVERA', 'HUGO GERARDO GARCIA RIVERA', NULL, NULL, NULL, 10, NULL);
INSERT INTO `verificadores` VALUES (231, 'JULIO CESAR', 'GUTIERREZ', 'GUTIERREZ', 'JULIO CESAR GUTIERREZ GUTIERREZ', NULL, NULL, NULL, 10, NULL);
INSERT INTO `verificadores` VALUES (232, 'ROBERTO CARLOS', 'AVILA', 'PEREZ', 'ROBERTO CARLOS AVILA PEREZ', NULL, NULL, NULL, 11, NULL);
INSERT INTO `verificadores` VALUES (233, 'SALVADOR IVANOSKY', 'CORONA', 'MENDOZA', 'SALVADOR IVANOSKY CORONA MENDOZA', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (234, 'ADOLFO', 'DURAN', 'AMBRIZ', 'ADOLFO DURAN AMBRIZ', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (235, 'JORGE HUMBERTO', 'JUAREZ', 'AVILA', 'JORGE HUMBERTO JUAREZ AVILA', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (236, 'FRANCISCO RAUL', 'ORTIZ', 'RODRIGUEZ', 'FRANCISCO RAUL ORTIZ RODRIGUEZ', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (237, 'ROBERTO', 'RODRIGUEZ', 'ARRIAGA', 'ROBERTO RODRIGUEZ ARRIAGA', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (238, 'JOSE ANTONIO', 'ROSAS', 'ANGEL', 'JOSE ANTONIO ROSAS ANGEL', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (239, 'JORGE OSIRIS', 'TOVAR', 'MENDOZA', 'JORGE OSIRIS TOVAR MENDOZA', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (240, 'JAVIER DANIEL', 'VEGA', 'TORRES', 'JAVIER DANIEL VEGA TORRES', NULL, NULL, NULL, 12, NULL);
INSERT INTO `verificadores` VALUES (241, 'ERNESTO', 'BARRIGA', 'ACOSTA', 'ERNESTO BARRIGA ACOSTA', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (242, 'HECTOR', 'CASTRO', 'CERVANTES', 'HECTOR CASTRO CERVANTES', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (243, 'CHRISTIAN GERARDO', 'CHAVEZ', 'AVALOS', 'CHRISTIAN GERARDO CHAVEZ AVALOS', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (244, 'ROGELIO', 'ESTRADA', 'GONZALEZ', 'ROGELIO ESTRADA GONZALEZ', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (245, 'CARLOS EDUARDO', 'MARES', 'URIBE', 'CARLOS EDUARDO MARES URIBE', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (246, 'JULIO IVAN', 'MEDINA', 'RUIZ', 'JULIO IVAN MEDINA RUIZ', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (247, 'SERGIO', 'MORA', 'SALGADO', 'SERGIO MORA SALGADO', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (248, 'MARCO ANTONIO', 'PINEDA', 'MARTINEZ', 'MARCO ANTONIO PINEDA MARTINEZ', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (249, 'ERIK', 'RODRIGUEZ', 'CARRILLO', 'ERIK RODRIGUEZ CARRILLO', NULL, NULL, NULL, 8, NULL);
INSERT INTO `verificadores` VALUES (250, 'CUITLAHUAC CUAUHTEMOC', 'ARIAS', 'MONTES', 'CUITLAHUAC CUAUHTEMOC ARIAS MONTES', NULL, 12, 30, 8, NULL);
INSERT INTO `verificadores` VALUES (251, 'GERARDO', 'BECERRA', 'CARRILLO', 'GERARDO BECERRA CARRILLO', NULL, 12, 30, 13, NULL);
INSERT INTO `verificadores` VALUES (252, 'JOSE HUGO', 'GUERRERO', 'PACHECO', 'JOSE HUGO GUERRERO PACHECO', NULL, NULL, NULL, 14, NULL);

SET FOREIGN_KEY_CHECKS = 1;
