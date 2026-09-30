Algoritmo Práctica_Desempeño
	Definir nombre, nivel Como Caracter
	Definir puntualidad, calidad, equipo Como Entero
	Definir promedio Como Real
	
	Escribir "Nombre del colaborador:"
	Leer nombre
	
	Repetir
		Escribir "Puntaje de puntualidad (0 a 10):"
		Leer puntualidad
		Si puntualidad < 0 O puntualidad > 10 Entonces
			Escribir "Error: el puntaje debe estar entre 0 y 10."
		FinSi
	Hasta Que puntualidad >= 0 Y puntualidad <= 10
	
	Repetir
		Escribir "Puntaje de calidad (0 a 10):"
		Leer calidad
		Si calidad < 0 O calidad > 10 Entonces
			Escribir "Error: el puntaje debe estar entre 0 y 10."
		FinSi
	Hasta Que calidad >= 0 Y calidad <= 10
	
	Repetir
		Escribir "Puntaje de trabajo en equipo (0 a 10):"
		Leer equipo
		Si equipo < 0 O equipo > 10 Entonces
			Escribir "Error: el puntaje debe estar entre 0 y 10."
		FinSi
	Hasta Que equipo >= 0 Y equipo <= 10
	
	promedio <- (puntualidad + calidad + equipo) / 3
	
	Si promedio >= 9 Entonces
		nivel <- "EXCELENTE"
	Sino
		Si promedio >= 7 Entonces
			nivel <- "BUENO"
		Sino
			nivel <- "NECESITA MEJORAR"
		FinSi
	FinSi
	
	Escribir "Colaborador: ", nombre
	Escribir "Promedio: ", promedio
	Escribir "Nivel: ", nivel
FinAlgoritmo
