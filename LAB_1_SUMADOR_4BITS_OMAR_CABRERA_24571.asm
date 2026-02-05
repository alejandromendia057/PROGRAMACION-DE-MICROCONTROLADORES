/*
* SUMADOR DE 4 BITS
*
* Creado: 3/02/2026 
* Autor : Omar Cabrera 
* Descripción: Hacer un sumador de 4 bits compuesto de dos contadores, los cuales pueden incrementar o decrementarse. Se muestra el resultado y si hay carry. 
*/
/**************/
// Encabezado (Definición de Registros, Variables y Constantes)
.include "M328PDEF.inc"     // Include definitions specific to ATMega328P
.dseg
.org    SRAM_START
//variable_name:     .byte   1   // Memory alocation for variable_name:     .byte   (byte size)

.cseg
.org 0x0000
 /**************/
// Configuración de la pila
LDI     R16, LOW(RAMEND)
OUT     SPL, R16
LDI     R16, HIGH(RAMEND)
OUT     SPH, R16
/**************/
// Configuracion MCU
SETUP:
	// Configuración del prescaler a 1 MHz 
	LDI R23, (1 << CLKPCE)
	STS CLKPR, R23
	LDI R23, 0b0000_0100
	STS CLKPR, R23