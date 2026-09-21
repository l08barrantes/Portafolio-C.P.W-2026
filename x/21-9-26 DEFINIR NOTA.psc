Proceso Notas_Letras
	//Algoritmo para convertir notas numericas a letras//90 a 100 = A. 80 a 89 = B 70 a 79 = C hacia abajo = F
	Definir nota Como Real
	Definir Resultado Como Caracter
	
	Escribir "Ingrese nota (0-100)"
	Leer nota
	//Validacion inicial para asegurar que la nota este en el rango correcto.
	si nota     < 0 O nota> 100 entonces
		Resultado <- "Error: La nota debe estar entre 0 y 100."
	Sino
		si (nota>=90) Entonces
			Resultado = "A -Excelente"
		Sino
			si (nota>=80)Entonces
				Resultado = "B -Bueno"
			Sino
				si (nota>=70)Entonces
					Resultado = "C -Satisfactorio"
				Sino
					si (nota>=60)Entonces
						Resultado = "D -Aprobado"
					sino
						Resultado = "F -Reprobado"
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	Escribir "Calificación:", Resultado
	
	
FinProceso

