Algoritmo PRA2_P1_Alquiler
	Definir nombre Como Cadena;
	Definir dias Como Entero;
	Definir km, subtotal, descuento, seguro, total Como Real;
	
	Escribir "Nombre del cliente:";
	Leer nombre;
	
	Escribir "Dias de alquiler:";
	Leer dias;
	Mientras dias <= 0 Hacer
		Escribir "Dato invalido: los dias deben ser mayores que 0.";
		Escribir "Dias de alquiler:";
		Leer dias;
	FinMientras
	
	Escribir "Kilometros recorridos:";
	Leer km;
	Mientras km < 0 Hacer
		Escribir "Dato invalido: los kilometros no pueden ser negativos.";
		Escribir "Kilometros recorridos:";
		Leer km;
	FinMientras
	
	subtotal <- dias * 30 + km * 0.25;
	
	Si dias > 7 Entonces
		descuento <- subtotal * 0.15;
	SiNo
		descuento <- 0;
	FinSi
	
	seguro <- (subtotal - descuento) * 0.10;
	total <- subtotal - descuento + seguro;
	
	Escribir "Cliente: ", nombre;
	Escribir "Subtotal: ", subtotal;
	Escribir "Descuento (15%): ", descuento;
	Escribir "Seguro (10%): ", seguro;
	Escribir "Total a pagar: ", total;
FinAlgoritmo