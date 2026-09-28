Proceso Tablas_Multiplicar
	
    // Estructura MIENTRAS - evalúa al inicio
	
    Definir tabla, contador, resultado Como Entero
	
    Escribir "Ingrese la tabla que desea calcular"
    Leer tabla
	
    // El contador inicia en un punto conocido
    contador <- 1
	
    Mientras contador <= 10 Hacer
		
        resultado <- tabla * contador
		
        Escribir tabla, " X ", contador, " = ", resultado
		
        // Crucial: incrementar el contador para evitar un ciclo infinito
        contador <- contador + 1
		
    FinMientras
	
    Escribir "Fin del programa"
	
FinProceso