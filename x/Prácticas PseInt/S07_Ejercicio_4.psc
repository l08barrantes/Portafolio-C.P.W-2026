Algoritmo S07_Ejercicio_4
	Definir LIMITE_INFERIOR, LIMITE_SUPERIOR, numero Como Entero
	Definir esMayorIgual, esMenorIgual, esValido Como Logico
	
	// Constantes del rango
	LIMITE_INFERIOR <- 0
	LIMITE_SUPERIOR <- 100
	
	// Pruebe con: 50 (válido), -10 (inválido), 150 (inválido)
	Escribir "Ingrese un número entero:"
	Leer numero
	
	// Comparaciones guardadas en variables lógicas
	esMayorIgual <- numero >= LIMITE_INFERIOR   // ¿no es menor que el límite inferior?
	esMenorIgual <- numero <= LIMITE_SUPERIOR   // ¿no es mayor que el límite superior?
	esValido <- esMayorIgual Y esMenorIgual     // debe cumplir ambas
	
	// Mostrar resultado
	Si esValido Entonces
		Escribir numero, " es VÁLIDO: está dentro del rango ", LIMITE_INFERIOR, " a ", LIMITE_SUPERIOR
	SiNo
		Escribir numero, " es INVÁLIDO: está fuera del rango ", LIMITE_INFERIOR, " a ", LIMITE_SUPERIOR
	FinSi
FinAlgoritmo
