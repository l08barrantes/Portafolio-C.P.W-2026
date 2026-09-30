Algoritmo S07_Ejercicio_7
	Definir NOTA_MINIMA Como Real
	Definir nombre, letra Como Caracter
	Definir nota1, nota2, nota3, promedio Como Real
	Definir aprobado Como Logico
	
	NOTA_MINIMA <- 6.0   // constante: nota mínima aprobatoria
	
	// Sugerido: María López, 8.5, 7.0, 9.2
	Escribir "Nombre del estudiante:"
	Leer nombre
	Escribir "Nota 1:"
	Leer nota1
	Escribir "Nota 2:"
	Leer nota2
	Escribir "Nota 3:"
	Leer nota3
	
	// Promedio
	promedio <- (nota1 + nota2 + nota3) / 3
	
	// ¿Aprobó?
	aprobado <- promedio >= NOTA_MINIMA
	
	// Letra: A (9-10), B (7-8.99), C (6-6.99), D (<6)
	Si promedio >= 9 Entonces
		letra <- "A"
	SiNo
		Si promedio >= 7 Entonces
			letra <- "B"
		SiNo
			Si promedio >= NOTA_MINIMA Entonces
				letra <- "C"
			SiNo
				letra <- "D"
			FinSi
		FinSi
	FinSi
	
	// Reporte
	Escribir "===== REPORTE DE CALIFICACIONES ====="
	Escribir "Estudiante: ", nombre
	Escribir "Notas     : ", nota1, " | ", nota2, " | ", nota3
	Escribir "Promedio  : ", Redon(promedio * 100) / 100
	Escribir "Letra     : ", letra
	Si aprobado Entonces
		Escribir "Resultado : APROBADO"
	SiNo
		Escribir "Resultado : REPROBADO"
	FinSi
FinAlgoritmo