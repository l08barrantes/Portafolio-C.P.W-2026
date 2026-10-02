Proceso AC1_P1_Nomina_LiamBarrantesC
	Definir nombreEmpleado Como Caracter;
	Definir salarioBruto, descuentoCCSS, descuentoASS, impuesto, salarioNeto Como Real;
	
	nombreEmpleado <- "";
	salarioBruto <- 0;
	descuentoCCSS <- 0;
	descuentoASS <- 0;
	impuesto <- 0;
	salarioNeto <- 0;
	
	Escribir "Nombre del empleado:";
	Leer nombreEmpleado;
	
	Escribir "Salario bruto:";
	Leer salarioBruto;
	// Validación
	Mientras salarioBruto <= 0 Hacer
		Escribir "Dato inválido. El salario bruto debe ser mayor que 0.";
		Escribir "Salario bruto:";
		Leer salarioBruto;
	FinMientras
	
	// Impuesto 
	Si salarioBruto > 800 Entonces
		impuesto <- salarioBruto * 0.10;
	SiNo
		impuesto <- 0;
	FinSi
	
	// Descuentos y salario neto
	descuentoCCSS <- salarioBruto * 0.095;
	descuentoASS <- salarioBruto * 0.025;
	salarioNeto <- salarioBruto - descuentoCCSS - descuentoASS - impuesto;
	
	Escribir "Empleado: ", nombreEmpleado;
	Escribir "Salario bruto: ", redon(salarioBruto * 100) / 100;
	Escribir "Descuento CCSS (9.5%): ", redon(descuentoCCSS * 100) / 100;
	Escribir "Descuento ASS (2.5%): ", redon(descuentoASS * 100) / 100;
	Escribir "Descuento impuesto (10%): ", redon(impuesto * 100) / 100;
	Escribir "Salario neto: ", redon(salarioNeto * 100) / 100;
FinProceso