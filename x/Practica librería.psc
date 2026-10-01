Proceso Práctica_Libreria
	Definir titulo Como Caracter;
	Definir precio, subtotal, totalLibros, descuento, impuesto, envio, totalPagar Como Real;
	Definir cantidad, unidades Como Entero;
	
	totalLibros <- 0;
	unidades <- 0;
	
	Escribir "Título del libro (FIN para terminar):";
	Leer titulo;
	
	Mientras Mayusculas(titulo) <> "FIN" Hacer
		
		Repetir
			Escribir "Precio:";
			Leer precio;
			Si precio <= 0 Entonces
				Escribir "Error: el precio debe ser positivo.";
			FinSi
		Hasta Que precio > 0;
		
		Repetir
			Escribir "Cantidad:";
			Leer cantidad;
			Si cantidad <= 0 Entonces
				Escribir "Error: la cantidad debe ser positiva.";
			FinSi
		Hasta Que cantidad > 0;
		
		subtotal <- precio * cantidad;
		subtotal <- redon(subtotal * 100) / 100;
		Escribir titulo, ": ", precio, " x ", cantidad, " = ", subtotal;
		
		totalLibros <- totalLibros + subtotal;
		unidades <- unidades + cantidad;
		
		Escribir "Título del libro (FIN para terminar):";
		Leer titulo;
	FinMientras
	
	Si unidades >= 5 Entonces
		descuento <- totalLibros * 0.10;
	Sino
		descuento <- 0;
	FinSi
	descuento <- redon(descuento * 100) / 100;
	
	Si totalLibros < 50 Entonces
		envio <- 8;
	Sino
		Si totalLibros < 150 Entonces
			envio <- 4;
		Sino
			envio <- 0;
		FinSi
	FinSi
	
	impuesto <- (totalLibros - descuento) * 0.13;
	impuesto <- redon(impuesto * 100) / 100;
	
	totalPagar <- totalLibros - descuento + impuesto + envio;
	totalPagar <- redon(totalPagar * 100) / 100;
	
	Escribir "Unidades: ", unidades;
	Escribir "Total de libros: ", totalLibros;
	Escribir "Descuento: ", descuento;
	Escribir "Impuesto (13%): ", impuesto;
	Escribir "Envío: ", envio;
	Escribir "TOTAL A PAGAR: ", totalPagar;
FinProceso