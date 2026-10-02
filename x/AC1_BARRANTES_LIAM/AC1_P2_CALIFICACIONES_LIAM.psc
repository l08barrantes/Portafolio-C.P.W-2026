Proceso AC1_P2_Calificaciones_LiamBarrantesC
	Definir nombreEstudiante, condicion Como Caracter;
	Definir calificacion1, calificacion2, calificacion3, promedio Como Real;
	
	nombreEstudiante <- "";
	condicion <- "";
	calificacion1 <- 0;
	calificacion2 <- 0;
	calificacion3 <- 0;
	promedio <- 0;
	
	Escribir "Nombre del estudiante:";
	Leer nombreEstudiante;
	
	// Validación
	Repetir
		Escribir "Calificación 1 (0 a 100):";
		Leer calificacion1;
		Si calificacion1 < 0 O calificacion1 > 100 Entonces
			Escribir "Dato inválido. Debe estar entre 0 y 100.";
		FinSi
	Hasta Que calificacion1 >= 0 Y calificacion1 <= 100
	
	Repetir
		Escribir "Calificación 2 (0 a 100):";
		Leer calificacion2;
		Si calificacion2 < 0 O calificacion2 > 100 Entonces
			Escribir "Dato inválido. Debe estar entre 0 y 100.";
		FinSi
	Hasta Que calificacion2 >= 0 Y calificacion2 <= 100
	
	Repetir
		Escribir "Calificación 3 (0 a 100):";
		Leer calificacion3;
		Si calificacion3 < 0 O calificacion3 > 100 Entonces
			Escribir "Dato inválido. Debe estar entre 0 y 100.";
		FinSi
	Hasta Que calificacion3 >= 0 Y calificacion3 <= 100
	
	promedio <- (calificacion1 + calificacion2 + calificacion3) / 3;
	
	// Condición 
	Si promedio >= 70 Entonces
		condicion <- "APROBADO";
	SiNo
		Si promedio >= 60 Entonces
			condicion <- "EN RIESGO";
		SiNo
			condicion <- "NO APROBADO";
		FinSi
	FinSi
	
	Escribir "Estudiante: ", nombreEstudiante;
	Escribir "Calificación 1: ", calificacion1;
	Escribir "Calificación 2: ", calificacion2;
	Escribir "Calificación 3: ", calificacion3;
	Escribir "Promedio: ", redon(promedio * 100) / 100;
	Escribir "Condición: ", condicion;
FinProceso