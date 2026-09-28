Proceso Control_Edad
	Definir edad Como Entero
	Escribir "Ingrese su edad:"
	Leer edad	
		Si(edad >= 18)
			Entonces escribir "puede votar"
		Sino
			escribir "debe tener 18 años cumplidos"
		FinSi
FinProceso
