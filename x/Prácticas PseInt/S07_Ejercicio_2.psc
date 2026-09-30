Algoritmo S07_Ejercicio_2
	// PSeInt no tiene palabra reservada para constantes: se usa una variable
	// en MAYÚSCULAS a la que se le asigna el valor UNA sola vez y no se modifica.
	Definir PRECIO_GASOLINA, TARIFA_HOTEL, COSTO_COMIDA Como Real
	Definir litros, noches, dias Como Entero
	Definir costoGasolina, costoHotel, costoComidas, totalDolares Como Real
	
	// Constantes (precios fijos)
	PRECIO_GASOLINA <- 800   // pesos por litro
	TARIFA_HOTEL <- 80       // dólares por noche
	COSTO_COMIDA <- 30       // dólares por día
	
	// Cantidades del viaje
	litros <- 50
	noches <- 5
	dias <- 6
	
	// Cálculos
	costoGasolina <- PRECIO_GASOLINA * litros   // en pesos
	costoHotel <- TARIFA_HOTEL * noches         // en dólares
	costoComidas <- COSTO_COMIDA * dias         // en dólares
	totalDolares <- costoHotel + costoComidas   // gastos en dólares
	
	// Desglose detallado
	Escribir "===== PRESUPUESTO DEL VIAJE ====="
	Escribir "Gasolina: ", litros, " L x ", PRECIO_GASOLINA, " = ", costoGasolina, " pesos"
	Escribir "Hotel   : ", noches, " noches x $", TARIFA_HOTEL, " = $", costoHotel
	Escribir "Comidas : ", dias, " días x $", COSTO_COMIDA, " = $", costoComidas
	Escribir "-------------------------------"
	Escribir "TOTAL en pesos   : ", costoGasolina, " pesos"
	Escribir "TOTAL en dólares : $", totalDolares
FinAlgoritmo
