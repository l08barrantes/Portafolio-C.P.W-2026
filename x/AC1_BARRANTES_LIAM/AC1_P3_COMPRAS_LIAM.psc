Proceso AC1_P3_Compras_LiamBarrantesC
	Definir cliente, producto, respuesta Como Caracter;
	Definir precio, cantidad, subtotalProducto, subtotal Como Real;
	Definir porcentaje, descuento, totalDescuento, impuesto, totalPagar Como Real;
	Definir contador Como Entero;
	
	subtotal <- 0;
	contador <- 0;
	porcentaje <- 0;
	descuento <- 0;
	totalDescuento <- 0;
	impuesto <- 0;
	totalPagar <- 0;
	respuesta <- "S";
	
	Escribir "Nombre del cliente:";
	Leer cliente;
	
	Repetir
		Escribir "Nombre del producto:";
		Leer producto;
		
		precio <- 0;
		Mientras precio <= 0 Hacer
			Escribir "Precio unitario:";
			Leer precio;
			Si precio <= 0 Entonces
				Escribir "Dato inválido. El precio debe ser mayor que 0.";
			FinSi
		FinMientras
		
		cantidad <- 0;
		Mientras cantidad <= 0 Hacer
			Escribir "Cantidad:";
			Leer cantidad;
			Si cantidad <= 0 Entonces
				Escribir "Dato inválido. La cantidad debe ser mayor que 0.";
			FinSi
		FinMientras
		
		subtotalProducto <- precio * cantidad;
		subtotal <- subtotal + subtotalProducto;
		contador <- contador + 1;
		Escribir producto, ": ", precio, " x ", cantidad, " = ", subtotalProducto;
		
		
		Repetir
			Escribir "¿Desea agregar otro producto? (S/N)";
			Leer respuesta;
			respuesta <- Mayusculas(respuesta);
			Si respuesta <> "S" Y respuesta <> "N" Entonces
				Escribir "Responda S o N.";
			FinSi
		Hasta Que respuesta = "S" O respuesta = "N"
	Hasta Que respuesta = "N"
	
	Si subtotal < 100 Entonces
		porcentaje <- 0;
	SiNo
		Si subtotal < 500 Entonces
			porcentaje <- 5;
		SiNo
			Si subtotal <= 1000 Entonces
				porcentaje <- 10;
			SiNo
				porcentaje <- 15;
			FinSi
		FinSi
	FinSi
	descuento <- subtotal * porcentaje / 100;
	totalDescuento <- subtotal - descuento;
	impuesto <- totalDescuento * 0.13;
	totalPagar <- totalDescuento + impuesto;
	
	descuento <- redon(descuento * 100) / 100;
	totalDescuento <- redon(totalDescuento * 100) / 100;
	impuesto <- redon(impuesto * 100) / 100;
	totalPagar <- redon(totalPagar * 100) / 100;
	
	Escribir "Cliente: ", cliente;
	Escribir "Productos registrados: ", contador;
	Escribir "Subtotal: ", subtotal;
	Escribir "Descuento (", porcentaje, "%): -", descuento;
	Escribir "Total con descuento: ", totalDescuento;
	Escribir "Impuesto (13%): ", impuesto;
	Escribir "Total a pagar: ", totalPagar;
	
FinProceso
