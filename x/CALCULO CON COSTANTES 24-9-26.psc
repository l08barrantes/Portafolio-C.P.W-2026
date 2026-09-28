Proceso Calculo_Con_Constantes
	//Declaración e constantes siempre al inicio
	//Contiene valores que no cambian
	
	Definir PII Como Real;
	Definir TASA_IMPUESTO Como Real;
	
	//    Asignación de valores a las constantes
	
	PII <- 3.14159;
	TASA_IMPUESTO <- 0.13;
	
	//Declaración e variables
	Definir radio Como Entero;
	Definir area Como Real;
	Definir precio Como Real;
	Definir impuesto Como Real;
	Definir total Como Real;
	
	//Encabezado
	Escribir "---CÁLCULO DE ÁREA DEL CIRCULO---";
	Escribir "Radio (cm): ";
	Leer radio;
	
	//Fórmula: Area = PII * r^2
	area <- PII * radio * radio;
	Escribir "El area del circulo es:" ,area;
	
FinProceso