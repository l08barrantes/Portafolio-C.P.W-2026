Proceso AC1_P3_Compras_LiamBarrantesC
	Definir cliente, producto, respuesta Como Caracter;
	Definir precio, cantidad, subtotalProducto, subtotal Como Real;
	Definir porcentajeDescuento, montoDescuento, totalConDescuento, impuesto, totalPagar Como Real;
	Definir contadorProductos Como Entero;
	
	cliente <- "";
	producto <- "";
	respuesta <- "S";
	precio <- 0;
	cantidad <- 0;
	subtotalProducto <- 0;
	subtotal <- 0;
	porcentajeDescuento <- 0;
	montoDescuento <- 0;
	totalConDescuento <- 0;
	impuesto <- 0;
	totalPagar <- 0;
	contadorProductos <- 0;
	
	Escribir "Nombre del cliente:";
	Leer cliente;
	
	// Ciclo
	Repetir
		Escribir "Nombre del producto:";
		Leer producto;
		
		// Validación
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
		
		// Acumulador del subtotal y contador de productos
		subtotalProducto <- precio * cantidad;
		subtotal <- subtotal + subtotalProducto;
		contadorProductos <- contadorProductos + 1;
		Escribir producto, ": ", precio, " x ", cantidad, " = ", subtotalProducto;
		
		// Validación
		Repetir
			Escribir "¿Desea agregar otro producto? (S/N)";
			Leer respuesta;
			respuesta <- Mayusculas(respuesta);
			Si respuesta <> "S" Y respuesta <> "N" Entonces
				Escribir "Responda S o N.";
			FinSi
		Hasta Que respuesta = "S" O respuesta = "N"
	Hasta Que respuesta = "N"
	
	// Descuento
	Si subtotal < 100 Entonces
		porcentajeDescuento <- 0;
	SiNo
		Si subtotal < 500 Entonces
			porcentajeDescuento <- 5;
		SiNo
			Si subtotal <= 1000 Entonces
				porcentajeDescuento <- 10;
			SiNo
				porcentajeDescuento <- 15;
			FinSi
		FinSi
	FinSi
	
	// Total
	montoDescuento <- subtotal * porcentajeDescuento / 100;
	totalConDescuento <- subtotal - montoDescuento;
	impuesto <- totalConDescuento * 0.13;
	totalPagar <- totalConDescuento + impuesto;
	
	Escribir "CLIENTE: ", cliente;
	Escribir "Productos registrados: ", contadorProductos;
	Escribir "Subtotal: ", redon(subtotal * 100) / 100;
	Escribir "Descuento (", porcentajeDescuento, "%): -", redon(montoDescuento * 100) / 100;
	Escribir "Total con descuento: ", redon(totalConDescuento * 100) / 100;
	Escribir "Impuesto (13%): ", redon(impuesto * 100) / 100;
	Escribir "TOTAL A PAGAR: ", redon(totalPagar * 100) / 100;
FinProceso