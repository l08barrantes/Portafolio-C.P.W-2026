Proceso Mi_Desicion
	Definir a, b Como Real
	Escribir "Ingrese el primer número:"
	
	Leer a
	Escribir "Ingrese el segundo número:"
	
	Leer b
	Si a > b Entonces
		Escribir "El mayor es: ", a
	SiNo
		Si b > a Entonces
			Escribir "El mayor es: ", b
		SiNo
			Escribir "Los números son iguales"
		FinSi
	FinSi
	
	Si a > 0 Y b > 0 Entonces
		Escribir "Ambos son positivos"
	FinSi
	
	Si a > 100 O b > 100 Entonces
		Escribir "Al menos uno es mayor que 100"
	FinSi
	
FinProceso