Algoritmo PRA2_P3_Soda
	Definir codigo, cantidad, articulos Como Entero;
	Definir nombre Como Cadena;
	Definir precio, monto, subtotal, descuento, base, iva, servicio, total Como Real;
	Definir valido Como Logico;
	Definir UMBRAL_DESC, PORC_DESC, PORC_IVA, PORC_SERVICIO Como Real;
	
	// Parametros
	UMBRAL_DESC <- 10000;
	PORC_DESC <- 0.10;
	PORC_IVA <- 0.13;
	PORC_SERVICIO <- 0.10;
	subtotal <- 0;
	articulos <- 0;
	
	// Menu
	Escribir "1. Casado 3500   2. Gallo pinto 2000   3. Refresco 1000   0. Terminar";
	
	// Proceso 1
	Escribir "Código:";
	Leer codigo;
	Mientras codigo <> 0 Hacer
		valido <- Verdadero;
		Segun codigo Hacer
			1:
				nombre <- "Casado";
				precio <- 3500;
			2:
				nombre <- "Gallo pinto";
				precio <- 2000;
			3:
				nombre <- "Refresco";
				precio <- 1000;
			De Otro Modo:
				valido <- Falso;
				Escribir "Código inválido";
		FinSegun
		
		Si valido Entonces
			Repetir
				Escribir "Cantidad (1 a 20):";
				Leer cantidad;
				Si cantidad < 1 O cantidad > 20 Entonces
					Escribir "Cantidad inválida, debe estar entre 1 y 20.";
				FinSi
			Hasta Que cantidad >= 1 Y cantidad <= 20
			
			monto <- cantidad * precio;
			Escribir nombre, ": ", cantidad, " x ", precio, " = ", monto;
			subtotal <- subtotal + monto;
			articulos <- articulos + cantidad;
		FinSi
		
		Escribir "Código:";
		Leer codigo;
	FinMientras
	
	// Proceso 2
	Si subtotal >= UMBRAL_DESC Entonces
		descuento <- subtotal * PORC_DESC;
	SiNo
		descuento <- 0;
	FinSi
	
	base <- subtotal - descuento;
	iva <- base * PORC_IVA;
	servicio <- base * PORC_SERVICIO;
	total <- base + iva + servicio;
	
	Escribir "Artículos: ", articulos;
	Escribir "Subtotal: ", subtotal;
	Escribir "Descuento (10%): ", descuento;
	Escribir "IVA (13%): ", Redon(iva * 100) / 100;
	Escribir "Servicio (10%): ", Redon(servicio * 100) / 100;
	Escribir "TOTAL A PAGAR: ", Redon(total * 100) / 100;
FinAlgoritmo