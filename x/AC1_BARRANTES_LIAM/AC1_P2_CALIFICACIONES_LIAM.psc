Proceso AC1_P2_Calificaciones_LiamBarrantesC
	Definir NOTA_MINIMA Como Real
	Definir nombre, letra Como Caracter
	Definir parcial1, parcial2, parcial3, promedio Como Real
	Definir aprobado Como Logico
	
	NOTAMINIMA <- 60
	
	Escribir "Nombre del estudiante:"
	Leer nombre
	
	Escribir "Calificación 1:"
	Leer parcial1
	
	Escribir "Calificación 2:"
	Leer parcial2
	
	Escribir "Calificación 3:"
	Leer parcial3
	
	
	promedio <- (parcial1 + parcial2 + parcial3) / 3
	
	aprobado <- promedio >= NOTAMINIMA
	
	Escribir "Estudiante: ", nombre
	Escribir "Calificación 1: ", parcial1
	Escribir "Calificación 2: ", parcial2
	Escribir "Calificación 3: ", parcial3
	Escribir "Promedio  : ", Redon(promedio * 100) / 100
	Si aprobado Entonces
		Escribir "Resultado : APROBADO"
	SiNo
		Escribir "Resultado : REPROBADO"
	FinSi
FinProceso
