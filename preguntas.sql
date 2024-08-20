-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-08-2024 a las 22:52:38
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mtto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `ID` int(11) NOT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `criterio` text,
  `rta_0` varchar(255) DEFAULT NULL,
  `rta_1` varchar(255) DEFAULT NULL,
  `rta_2` varchar(255) DEFAULT NULL,
  `rta_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`ID`, `tema`, `criterio`, `rta_0`, `rta_1`, `rta_2`, `rta_3`) VALUES
(1, 'Mano de obra', '¿La plantilla tiene el personal que necesita?', 'No.', '> 20% exceso o defecto.', 'Entre 10-20% de exceso o defecto', 'Exactamente lo que se necesita.'),
(2, 'Mano de obra', '¿El personal tiene la formaciónadecuada?', 'No.', 'Carencias importantes.', 'Casi todos', 'Sí.'),
(3, 'Mano de obra', '¿Hay una parte del personal polivalente?', '0% polivalente.', '< 10% polivalente.', '10-40% polivalente', '> 40% polivante.'),
(4, 'Mano de obra', '¿Hay personal imprescindible?', '> 25%', 'Entre 25-15%', '< 15%.', '0%.'),
(5, 'Mano de obra', '¿Hay un Plan de Formación para el personal?', 'No hay ningún plan.', 'Hay un plan, pero escaso e incompleto.', 'Se observan deficiencias subsanables.', 'Sí.'),
(6, 'Mano de obra', '¿El Plan de Formación resulta adecuado, y se lleva a cabo?', 'No a las dos preguntas.', 'No a una de las dos preguntas.', 'Se observan deficiencias subsanables.', 'Sí a las dos preguntas.'),
(7, 'Mano de obra', '¿Se respeta el horario de entrada?', '> 30 minutos de pérdida.', '10-30 minutos de pérdida.', '< 10 min depérdida.', 'Sí.'),
(8, 'Mano de obra', '¿Se respeta el horario de salida?', '> 30 minutos de pérdida.', '10-30 minutos de pérdida.', '< 10 min depérdida.', 'Sí.'),
(9, 'Mano de obra', '¿Se respeta el horario en los descansos?', '> 30 minutos de pérdida.', '10-30 minutos de pérdida.', '< 10 min depérdida.', 'Sí.'),
(10, 'Mano de obra', '¿El nivel de ausentismo es bajo?', '> 5%.', '3-5%.', '1-3%.', '< 1%.'),
(11, 'Mano de obra', '¿Los operarios están dispuestos aprolongar su jornada, acudir en festivos, noches, fuera de su turno,etc., en caso de necesidad?', 'No.', 'Poblemático.', 'Habitualmente sí.', 'Siempre.'),
(12, 'Mano de obra', '¿En general, las O.T. se resuelven cumpliendo el programa de mantenimiento?', 'No hay programación o no se cumple.', 'Más de un 50% de diferencia.', 'Se cumple en más de un 80%.', 'La programación se cumple exactamente.'),
(13, 'Mano de obra', '¿El tiempo de intervención está deacuerdo con las tablas de tiemponormales?', '>  del doble de tiempo del normal.', '30-100% de diferencia.', '10-30% de diferencia.', '< 10% de diferencia.'),
(14, 'Mano de obra', '¿La media de tiempos muertos no productivos es la adecuada?', '> 40%.', '30-40%.', '20-30%.', '< 20%.'),
(15, 'Mano de obra', '¿El personal cumplimenta correctamente las O.T.?', 'No, nunca.', 'Siempre incompletas.', 'Habitualmente, sí.', 'Sí, siempre.'),
(16, 'Mano de obra', '¿El organigrama resulta adecuado?', 'No se ajusta en absoluto a las necesidades.', 'Deficiencias en el organigrama.', 'Falta o sobra algún puesto.', 'Sí.'),
(17, 'Mano de obra', '¿El personal indirecto está en número adecuado?', 'Exceso de personal.', 'Deficiencias importantes.', 'Optimizable.', 'Sí.'),
(18, 'Mano de obra', '¿El personal indirecto tiene la formación adecuada?', 'No conocen mantenmiento.', 'Carencias importantes.', 'Tienen algunas carencias.', 'Sí.'),
(19, 'Mano de obra', '¿Los mandos intermedios (encargados y jefes de equipo) intervienen en la resolución de ordenes de trabajo?', 'Solo organizan el trabajo.', 'Raramente intervienen.', 'Habitualmente lo hacen.', '50% de sutiempo inter-vienen.'),
(20, 'Mano de obra', '¿El organigrama general del departamento es adecuado?', 'Le faltan o le sobran funciones clave.', 'Le falta o le sobra alguna función importante.', 'Mejorable.', 'Perfecto.'),
(21, 'Medios técnicos', '¿Los equipos de medida están calibrados?', 'Ninguno.', 'Muy pocos.', 'Casi todos.', 'Sí.'),
(22, 'Medios técnicos', '¿Las herramientas para el mantenimiento mecánico se corresponden con lo que se necesita?', 'No.', 'Carencias importantes.', 'Falta algo.', 'Sí.'),
(23, 'Medios técnicos', '¿Las herramientas para el mantenimiento eléctrico se corresponden con lo que se necesita?', 'No.', 'Carencias importantes.', 'Falta algo.', 'Sí.'),
(24, 'Medios técnicos', '¿Las herramientas para el mantenimiento de la instrumentación se corresponden con lo que se necesita?', 'No.', 'Carencias importantes.', 'Falta algo.', 'Sí.'),
(25, 'Medios técnicos', '¿Existe un inventario de las herramientas que se usan en el departamento?', 'No.', 'Mucha diferencia con lo que hay.', 'Sí, pero no es completo', 'Sí.'),
(26, 'Medios técnicos', '¿Los equipos están limpios y en buen estado?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(27, 'Medios técnicos', '¿Los equipos están colocados adecuadamente en el taller, y debidamente señalizados?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(28, 'Medios técnicos', '¿El softwarede gestión o el sistema de información de mantenimiento es el adecuado?', 'No.', 'Carencias importantes.', 'Mejorable.', 'Sí.'),
(29, 'Medios técnicos', '¿El sistema aporta información fiable?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(30, 'Medios técnicos', '¿Los operarios consultan alguna vez los datos contenidos en el sistema de información?', 'Nunca, no les es útil.', 'Rara vez.', 'A veces, pero no mucho.', 'Muy a menudo.'),
(31, 'Medios técnicos', '¿El número de horas invertido en introducir datos al sistema es bajo?', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy Bajo.'),
(32, 'Medios técnicos', '¿El taller de mantenimiento parece limpio y ordenado?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(33, 'Medios técnicos', '¿Está bien señalizado e identificado su interior?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(34, 'Medios técnicos', '¿Está situado en el lugar adecuado?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(35, 'Medios técnicos', '¿El taller cuenta con los medios adecuados al tipo de trabajo que se realiza?', 'No.', 'Carencias importantes.', 'Falta algo.', 'Sí.'),
(36, 'Medios técnicos', '¿Las oficinas parecen limpias y ordenadas?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(37, 'Medios técnicos', '¿Se cuenta con los medios adecuados en la oficina (ordenadores, impresoras, faxes, teléfonos, etc.)?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(38, 'Metodo de trabajo', '¿Se ha realizado un análisis deequipos?', 'Nunca se ha estudiado.', '', '', 'Sí.'),
(39, 'Metodo de trabajo', '¿Ese análisis establece el nivel de criticidad de cada equipo?', 'Nunca se ha estudiado.', 'Sí, pero con criterios incorrectos.', 'Sí, pero hay que reestudiarlo', 'Sí, y está bien hecho.'),
(40, 'Metodo de trabajo', '¿En ese análisis se determina el modelo de mantenimiento más adecuado para cada equipo?', 'No.', 'Sí, pero con criterios incorrectos.', 'Sí, pero hay que reestudiarlo', 'Sí, y está bien hecho.'),
(41, 'Metodo de trabajo', '¿Se ha realizado un Plan de Mantenimiento Programado?', 'No.', 'Abarca pocos equipos.', 'Sí, pero no es completo.', 'Sí.'),
(42, 'Metodo de trabajo', '¿Este plan resulta adecuado?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(43, 'Metodo de trabajo', '¿Hay una planificación de mantenimiento?', 'No.', '', '', 'Sí.'),
(44, 'Metodo de trabajo', '¿Se emite un informe periódico que analiza la evolución del departamento de mantenimiento?', 'No.', 'Sí, pero es inadecuado.', 'Sí, pero es mejorable.', 'Sí.'),
(45, 'Metodo de trabajo', '¿El informe aporta información útil para la toma de decisiones?', 'No.', 'Muy poca utilidad', 'Es mejorable', 'Sí.'),
(46, 'Metodo de trabajo', '¿Existe un plan de Formación?', 'No.', '', '', 'Sí.'),
(47, 'Metodo de trabajo', '¿Ese plan resulta adecuado?', 'No.', 'Poco adecuado.', 'Es mejorable', 'Sí.'),
(48, 'Metodo de trabajo', '¿El Plan de Formación se lleva acabo?', 'No.', 'Muy poco.', 'Se intenta cumplir.', 'Rigurosamente.'),
(49, 'Metodo de trabajo', '¿La proporción entre mantenimiento programado y no programado es la adecuada?', '< 20%.', '20-50%.', '50-70%', '> 70%.'),
(50, 'Metodo de trabajo', '¿Se trabaja con Órdenes de Trabajo o sistemas similares?', 'Nunca.', 'Raras ocasiones', 'No siempre.', 'Sí.'),
(51, 'Metodo de trabajo', '¿Existe un sistema establecido para asignar prioridades a las O.T.?', 'No.', 'Existe pero sin criterio.', 'Sí, pero los criterios no están muy claros.', 'Sí.'),
(52, 'Metodo de trabajo', '¿Las Órdenes de Trabajo se recopilan y analizan?', 'Nunca.', 'Raras ocasiones.', 'No siempre.', 'Sí.'),
(53, 'Metodo de trabajo', '¿Existen procedimientos para las intervenciones más habituales?', 'No.', 'Muy pocos.', 'Muchos.', 'Casi todas, sí.'),
(54, 'Metodo de trabajo', '¿Los operarios usan esos procedimientos?', 'Nunca.', 'Raras ocasiones.', 'No siempre.', 'Sí.'),
(55, 'Metodo de trabajo', '¿Se proponen mejoras desde el área de mantenimiento?', 'No.', 'Raras ocasiones.', 'No siempre.', 'Sí.'),
(56, 'Metodo de trabajo', '¿Se recogen y analizan las mejoras que proponen los operarios?', 'No.', 'Raras ocasiones.', 'No siempre.', 'Sí.'),
(57, 'Materiales', '¿Existe una lista de repuesto mínimo a mantener en stock?', 'No.', 'Sí, pero no es válida.', 'Sí, pero es incompleta.', 'Sí.'),
(58, 'Materiales', '¿Los criterios para seleccionar ese repuesto mínimo son coherentes?', 'No.', 'Existe pero sin criterio.', 'Sí, pero los criterios no están muyclaros.', 'Sí.'),
(59, 'Materiales', '¿Esa lista se actualiza y se mejora periódicamente?', 'No.', '', '', 'Sí.'),
(60, 'Materiales', '¿Se comprueba que los repuestos contenidos en la lista están realmente en la planta?', 'No.', 'Raras ocasiones.', 'No siempre.', 'Sí.'),
(61, 'Materiales', '¿Existe un sistema de registro de entradas y salidas del almacén que permita conocer los movimientosdel almacén en un periodo determinado?', 'No.', 'Sí, pero es inadecuado.', 'Sí, pero es mejorable.', 'Sí.'),
(62, 'Materiales', '¿Los materiales del almacén están colocados adecuadamente?', 'Es muy dificil encontrar algo', 'Es preocupante.', 'Es mejorable', 'Es muy fácil encontrar lo que se busca.'),
(63, 'Materiales', '¿La ubicación de los almacénes es la adecuada?', 'No.', 'Poco adecuada.', 'Es mejorable.', 'Sí.'),
(64, 'Materiales', '¿Existe algún sistema para realizar inventarios periódicos?', 'No.', 'Preocupante.', 'Mejorable.', 'Sí.'),
(65, 'Materiales', '¿Lo que se cree que se tiene coincide con lo que se tiene realmente?', 'Más de 25% de desviaciones', '15-25% de desviaciones.', 'Menos de un 15% de desviaciones.', 'Coincide perfectamente'),
(66, 'Materiales', '¿Hay indicadores para medir la eficacia del almacén?', 'No.', 'Son insuficientes.', 'Sí, pero es mejorable.', 'Sí, y resultan adecuados'),
(67, 'Materiales', '¿El sistema de compras es ágil?', 'Demasiado lento.', 'Lento.', 'Sí, pero es mejorable.', 'Sistema muy ágil.'),
(68, 'Materiales', '¿Existen indicadores para evaluarla eficacia del sistema de compras?', 'No.', 'Son insuficientes.', 'Sí, pero es mejorable.', 'Sí, y resultan adecuados.'),
(69, 'Materiales', '¿Los materiales siempre alcanzan la calidad que se necesita?', 'No.', 'Son insuficientes.', 'Sí, pero es mejorable.', 'Sí, y resultan adecuados.'),
(70, 'Resultados obtenidos', 'La disponibilidad media de los equipos significativos es la adecuada.', 'Mala.', 'Se aleja del óptimo.', 'Pequeñas desviaciones.', 'Buena.'),
(71, 'Resultados obtenidos', 'La evolución de la disponibilidad esbuena.', 'Está disminuyendo', 'Tendencia a disminuir.', 'Está estabilizada', 'Está aumentando.'),
(72, 'Resultados obtenidos', 'Tiempo medio entre fallos en equipos significativos.', 'Malo.', 'Se aleja del óptimo.', 'Pequeñas desviaciones.', 'Buena.'),
(73, 'Resultados obtenidos', 'Evolución del tiempo medio entre fallos.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada', 'Está disminuyendo.'),
(74, 'Resultados obtenidos', 'N° de O.T de Emergencia o deprioridad máxima', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(75, 'Resultados obtenidos', 'Evolución de las O.T de emergencia.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(76, 'Resultados obtenidos', 'Tiempo medio de reparación.', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(77, 'Resultados obtenidos', 'Evolución del tiempo medio de reparación.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(78, 'Resultados obtenidos', 'Número de averías repetitivas.', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(79, 'Resultados obtenidos', 'Evolución del número de averíasrepetitivas.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(80, 'Resultados obtenidos', 'N° de horas/hombre invertido en mantenimiento.', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(81, 'Resultados obtenidos', 'Evolución de las horas en los últimos 4 años.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(82, 'Resultados obtenidos', 'Coste del Mantenimiento contratado a fabricantes.', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(83, 'Resultados obtenidos', 'Evolución del coste de mantenimiento contratado a fabricantes.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(84, 'Resultados obtenidos', 'Gasto en repuestos.', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(85, 'Resultados obtenidos', 'Evolución del gasto en repuestos.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(86, 'Resultados obtenidos', 'Coste total de mantenimiento.', 'Muy alto.', 'Alto.', 'Bajo.', 'Muy bajo.'),
(87, 'Resultados obtenidos', 'Evolución del coste.', 'Está aumentando.', 'Tendencia a aumentar.', 'Está estabilizada.', 'Está disminuyendo.'),
(88, 'Resultados obtenidos', '¿El resto de los indicadores que seusan son adecuados?', 'No.', 'Grandes dudas.', 'Algunos no.', 'Sí.'),
(89, 'Resultados obtenidos', '¿La evolución de todos ellos es po-sitiva?', 'Todos van mal', 'Algunos están empeorando', 'Casi todos van bien.', 'Todos van bien.'),
(90, 'Seguridad', '¿Se ha efectuado la evaluación de riesgos?', 'No.', 'Sí, pero está mal hecha', 'Sí, aunque es mejorable.', 'Sí.'),
(91, 'Seguridad', '¿Hay un Plan de Seguridad?', 'No.', 'Sí, pero está mal hecha', 'Sí, aunque es mejorable.', 'Sí.'),
(92, 'Seguridad', '¿El plan resulta adecuado?', 'No.', 'Poco adecuado.', 'Es mejorable.', 'Sí.'),
(93, 'Seguridad', '¿La inspección visual de la planta hace pensar que se trata de una instalación segura?', 'No.', 'Ofrece dudas.', 'Es mejorable.', 'Sí.'),
(94, 'Seguridad', '¿Los trabajadores reciben de formaperiódica formación en seguridad?', 'No, nunca.', 'Rara vez.', 'Hay que aumentar la frecuencia.', 'Sí.'),
(95, 'Seguridad', '¿Los trabajadores usan habitualmente los medios de protección individual?', 'No, nunca.', 'A veces.', 'No siempre.', 'Siempre.'),
(96, 'Seguridad', '¿El nivel de accidentalidad es bajo?', 'Muy alto.', 'Preocupante.', 'Mejorable.', 'Muy bajo.'),
(97, 'Medio ambiente', '¿Existe un Plan Medioambiental?', 'No.', 'Sí, pero está mal hecha.', 'Sí, aunque es mejorable.', 'Sí.'),
(98, 'Medio ambiente', '¿En este plan se analizan adecuadamente los aspectos medioambientales y su significación?', 'No.', 'Sí, pero está mal hecha.', 'Sí, aunque es mejorable.', 'Sí.'),
(99, 'Medio ambiente', '¿Este plan se lleva a cabo correctamente?', 'No, nunca.', 'A veces.', 'Casi siempre', 'Siempre.'),
(100, 'Medio ambiente', 'El personal está mentalizado y actúa de acuerdo con el Plan Medioambiental?', 'No.', 'Le dan poca importancia.', 'Sí, aunque aveces no.', 'Siempre.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
