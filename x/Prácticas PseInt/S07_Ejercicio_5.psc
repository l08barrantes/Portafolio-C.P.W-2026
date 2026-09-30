Algoritmo S07_Ejercicio_5
	Definir MESES_POR_ANIO Como Entero
	Definir monto, tasaAnual, tasaMensual, cuota, totalPagar Como Real
	Definir plazo Como Entero
	
	MESES_POR_ANIO <- 12   // constante
	
	// Sugerido: 50000, 6.5, 24
	Escribir "Monto del préstamo:"
	Leer monto
	Escribir "Tasa de interés anual (%):"
	Leer tasaAnual
	Escribir "Plazo en meses:"
	Leer plazo
	
	// Tasa mensual en decimal (6.5% -> 0.065 / 12)
	tasaMensual <- tasaAnual / 100 / MESES_POR_ANIO
	
	// Fórmula de cuota fija (sistema francés): C = P*i / (1 - (1+i)^-n)
	Si tasaMensual = 0 Entonces
		cuota <- monto / plazo   // sin interés
	SiNo
		cuota <- (monto * tasaMensual) / (1 - 1 / ((1 + tasaMensual) ^ plazo))
	FinSi
	
	totalPagar <- cuota * plazo
	
	// Resultado redondeado a 2 decimales
	Escribir "===== CUOTA MENSUAL ====="
	Escribir "Préstamo     : ", monto
	Escribir "Tasa anual   : ", tasaAnual, "%"
	Escribir "Plazo        : ", plazo, " meses"
	Escribir "Cuota mensual: ", Redon(cuota * 100) / 100
	Escribir "Total a pagar: ", Redon(totalPagar * 100) / 100
	Escribir "Intereses    : ", Redon((totalPagar - monto) * 100) / 100
FinAlgoritmo