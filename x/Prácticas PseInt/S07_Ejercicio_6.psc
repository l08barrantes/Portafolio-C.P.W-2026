Algoritmo S07_Ejercicio_6
	Definir PREFIJO_SEGURIDAD Como Caracter
	Definir usuario, contrasena Como Caracter
	Definir anio, numeroEspecial Como Entero
	
	// Constante de prefijo
	PREFIJO_SEGURIDAD <- "SEG#"
	
	// Sugerido: carlos_24, 2026, 99
	Escribir "Nombre de usuario:"
	Leer usuario
	Escribir "Año actual:"
	Leer anio
	Escribir "Número especial:"
	Leer numeroEspecial
	
	// Se convierten los números a texto para poder concatenar
	contrasena <- PREFIJO_SEGURIDAD + usuario + "_" + ConvertirATexto(anio) + "_" + ConvertirATexto(numeroEspecial)
	
	Escribir "Contraseña generada: ", contrasena
FinAlgoritmo
