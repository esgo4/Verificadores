/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : registro_ins_ver

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 06/02/2020 15:44:18
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cargos
-- ----------------------------
INSERT INTO `cargos` VALUES (1, 'INSPECTOR', 'Delegar', 1);
INSERT INTO `cargos` VALUES (2, 'VERIFICADOR', 'Observador', 1);
INSERT INTO `cargos` VALUES (3, 'AUXILIAR DE PROMOCIÓN', 'Promover', 1);
INSERT INTO `cargos` VALUES (4, 'SUPERVISOR DE ZONA', 'Analizar', 1);
INSERT INTO `cargos` VALUES (5, 'ANALISTA B (CONSEJERO DE EMPLEO)', 'Analizar B', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of verificadores
-- ----------------------------
INSERT INTO `verificadores` VALUES (1, 'Esaul', 'Gomez', 'Hernandez', 'Esaul Gomez Hernandez', '543', 5, 7, 1, 'profile.jpg');
INSERT INTO `verificadores` VALUES (2, 'Enrique', 'Calderon', 'Garcia', 'Enrique Calderon Garcia', '45615', 9, 21, 5, 'profile.jpg');
INSERT INTO `verificadores` VALUES (3, 'Enrique', 'Fernandez', 'Gonzales', 'Enrique Fernandez Gonzales', '78945', 9, 21, 3, 'profile.jpg');
INSERT INTO `verificadores` VALUES (4, 'Jose Juan', 'Lopez', 'Marin', 'Jose Juan Lopez Marin', '8615', 9, 21, 1, 'user.png');
INSERT INTO `verificadores` VALUES (5, 'Jose Juan', 'Calderon', 'Garcia', 'Jose Juan Calderon Garcia', '86454', 9, 21, 2, 'user.png');
INSERT INTO `verificadores` VALUES (6, 'Enrique', 'Fernandez', 'Marin', 'Enrique Fernandez Marin', '684654', 12, 30, 4, 'user.png');
INSERT INTO `verificadores` VALUES (7, 'Enrique', 'Lopez', 'Garcia', 'Enrique Lopez Garcia', '543', 6, 12, 2, 'user.png');
INSERT INTO `verificadores` VALUES (8, 'Luis', 'Pedro', 'Gomez', 'Luis Pedro Gomez', '8456456', 5, 7, 5, 'user.png');
INSERT INTO `verificadores` VALUES (9, 'Ana', 'Perez', 'Gonzalez', 'Ana Perez Gonzales', '8456456', 5, 7, 5, 'female.png');
INSERT INTO `verificadores` VALUES (10, 'Ernesto', 'Padilla', 'Ortega', 'Ernesto Padilla Ortega', '8456456', 5, 7, 5, 'female.png');
INSERT INTO `verificadores` VALUES (11, 'Juan', 'Villanueva', 'Ortiz', 'Juan Villanueva Ortiz', '8456456', 5, 7, 5, 'female.png');
INSERT INTO `verificadores` VALUES (12, 'Mario', 'Paredes', 'Plancarte', 'Mario Paredes Plancarte', '64', 5, 7, 5, 'female.png');
INSERT INTO `verificadores` VALUES (13, 'Oscar', 'Cejin', 'Cortes', 'Oscar Cejin Cortes', '64', 5, 7, 5, 'female.png');
INSERT INTO `verificadores` VALUES (14, 'Jose', 'Manuel', 'Lopez', 'Jose Manuel Lopez', '786154', 5, 7, 5, '83418557_183755062829521_2729946720178798592_o.jpg');
INSERT INTO `verificadores` VALUES (15, 'Ana Luisa', 'Alvarez', 'Martinez', 'Ana Luisa Alvarez Martinez', '8875', 12, 30, 4, 'female.png');

SET FOREIGN_KEY_CHECKS = 1;
