Algoritmo S07_Ejercicio_8
	Definir FACTOR_CONVERSION, DESFASE_FAHRENHEIT Como Real
	Definir MIN_CELSIUS, MAX_CELSIUS, LIMITE_FRIO, LIMITE_CALIENTE Como Real
	Definir opcion Como Entero
	Definir temperatura, celsius, fahrenheit Como Real
	Definir esRealista Como Logico
	Definir clasificacion Como Caracter
	
	// Constantes de conversión: F = C * 9/5 + 32
	FACTOR_CONVERSION <- 9 / 5
	DESFASE_FAHRENHEIT <- 32
	// Rango realista (en °C) y límites de clasificación
	MIN_CELSIUS <- -90
	MAX_CELSIUS <- 60
	LIMITE_FRIO <- 15       // menor a 15 °C = Frío
	LIMITE_CALIENTE <- 30   // mayor a 30 °C = Caliente
	
	Escribir "1. Celsius a Fahrenheit"
	Escribir "2. Fahrenheit a Celsius"
	Leer opcion
	Escribir "Ingrese la temperatura:"
	Leer temperatura
	
	// Conversión según la opción elegida
	Si opcion = 1 Entonces
		celsius <- temperatura
		fahrenheit <- celsius * FACTOR_CONVERSION + DESFASE_FAHRENHEIT
	SiNo
		fahrenheit <- temperatura
		celsius <- (fahrenheit - DESFASE_FAHRENHEIT) / FACTOR_CONVERSION
	FinSi
	
	// Validación de rango realista
	esRealista <- (celsius >= MIN_CELSIUS) Y (celsius <= MAX_CELSIUS)
	
	Si esRealista Entonces
		// Clasificación
		Si celsius < LIMITE_FRIO Entonces
			clasificacion <- "Frío"
		SiNo
			Si celsius <= LIMITE_CALIENTE Entonces
				clasificacion <- "Templado"
			SiNo
				clasificacion <- "Caliente"
			FinSi
		FinSi
		Escribir Redon(celsius * 100) / 100, " °C = ", Redon(fahrenheit * 100) / 100, " °F"
		Escribir "Clasificación: ", clasificacion
	SiNo
		Escribir "Temperatura no realista (rango permitido: ", MIN_CELSIUS, " a ", MAX_CELSIUS, " °C)"
	FinSi
FinAlgoritmo
