Algoritmo PRA2_P2_Refrigeracion
	Definir producto, estado Como Cadena;
	Definir i, NUM_LECTURAS Como Entero;
	Definir lectura, suma, promedio Como Real;
	Definir TEMP_MIN, TEMP_MAX, OPT_MIN, OPT_MAX, ALERTA_MAX Como Real;
	
	// Parametros 
	NUM_LECTURAS <- 3;
	TEMP_MIN <- -30;
	TEMP_MAX <- 30;
	OPT_MIN <- 0;
	OPT_MAX <- 4;
	ALERTA_MAX <- 8;
	suma <- 0;
	
	// Entrada
	Repetir
		Escribir "Producto almacenado:";
		Leer producto;
		Si Longitud(producto) = 0 Entonces
			Escribir "Dato invalido: el producto no puede estar vacio.";
		FinSi
	Hasta Que Longitud(producto) > 0
	
	// Entrada
	Para i <- 1 Hasta NUM_LECTURAS Con Paso 1 Hacer
		Repetir
			Escribir "Lectura ", i, " en °C (", TEMP_MIN, " a ", TEMP_MAX, "):";
			Leer lectura;
			Si lectura < TEMP_MIN O lectura > TEMP_MAX Entonces
				Escribir "Dato invalido: la lectura debe estar entre ", TEMP_MIN, " y ", TEMP_MAX, ".";
			FinSi
		Hasta Que lectura >= TEMP_MIN Y lectura <= TEMP_MAX
		suma <- suma + lectura;
	FinPara
	
	// Calculo del promedio
	promedio <- suma / NUM_LECTURAS;
	
	// Decisiones anidadas con condiciones compuestas
	Si promedio >= OPT_MIN Y promedio <= OPT_MAX Entonces
		estado <- "ÓPTIMO";
	SiNo
		Si promedio > OPT_MAX Y promedio <= ALERTA_MAX Entonces
			estado <- "ALERTA";
		SiNo
			estado <- "FUERA DE RANGO";
		FinSi
	FinSi
	
	// Salida
	Escribir "Producto: ", producto;
	Escribir "Promedio: ", Redon(promedio * 100) / 100, " °C";
	Escribir "Estado: ", estado;
FinAlgoritmo