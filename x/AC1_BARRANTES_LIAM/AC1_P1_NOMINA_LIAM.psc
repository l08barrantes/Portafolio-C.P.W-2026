Proceso AC1_P1_Nomina_LiamBarrantesC
	Definir nombre como cadena;
	Definir salario como entero;
	Definir bruto, ASS, CCSS, impuesto, total Como Real;
	
	Escribir "Nombre del funcionario:";
	Leer nombre;
	
	Escribir "Salario bruto";
	Leer bruto;
	mientras bruto <= 0 hacer 
		escribir "El salario bruto no puede ser negativo";
		Escribir "Salario Bruto";
		Leer bruto
	FinMientras
	
	
	Si bruto > 800 
		Impuesto <- bruto * 0.10;
	SiNo
		Impuesto <- 0;
	FinSi
	
	ASS <- (bruto - ASS) * 0.025;
	CCSS <- (bruto - CCSS) * 0.095;
	
	total <- bruto - CCSS - ASS- Impuesto;
	
	Escribir "Funcionario: ", nombre;
	Escribir "Salario bruto: ", bruto;
	Escribir "Descuento ASS(2.5%): ", ASS;
	Escribir "Descuento CCSS (9.5%): ", CCSS;
	Escribir "Descuento Impuesto (10%):", Impuesto;
	Escribir "Salario neto:", total;
	
	
FinProceso
