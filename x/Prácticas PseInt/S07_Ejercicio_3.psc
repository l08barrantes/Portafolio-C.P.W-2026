Algoritmo S07_Ejercicio_3
	Definir numeroTexto, resultadoTexto, mensaje Como Caracter
	Definir numero, resultado Como Entero
	
	// Leer el número como texto (sugerido: 15)
	Escribir "Ingrese un número (se leerá como texto):"
	Leer numeroTexto
	
	// Convertir el texto a número entero
	numero <- ConvertirANumero(numeroTexto)
	
	// Operaciones: multiplicar por 3 y sumar 10
	resultado <- numero * 3 + 10
	
	// Convertir el resultado de vuelta a texto
	resultadoTexto <- ConvertirATexto(resultado)
	
	// Mensaje final que combina texto y números
	mensaje <- "El resultado de (" + numeroTexto + " x 3) + 10 es: " + resultadoTexto
	Escribir mensaje
FinAlgoritmo
