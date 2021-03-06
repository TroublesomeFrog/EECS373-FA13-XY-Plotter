#ifndef PLOTTER_PLATFORM_H_
#define PLOTTER_PLATFORM_H_

#include <stdlib.h>
#include <string.h>

#include "./TOP_hw_platform.h"
#include "./hal/CortexM3/GNU/cpu_types.h"
#include "../drivers/mss_uart/mss_uart.h"
#include "../drivers/CoreUARTapb/core_uart_apb.h"

/* Global Macros (Optionally defined elsewhere)
 * ========================================================================= */
#ifndef PLOTTER_BASE_ADDR
#define PLOTTER_BASE_ADDR	MOTOR_APB_INTERFACE_0
#endif

#ifndef BAUD_VALUE_9600
#define BAUD_VALUE_9600    	324
#endif


/* Plotter Memory Mapped IO
 * ========================================================================= */
extern volatile int16_t *numStepsX;
extern volatile uint32_t *periodX;
extern volatile int16_t *numStepsY;
extern volatile uint32_t *periodY;
extern volatile uint16_t *GO;
extern volatile uint16_t *globalPositionX;
extern volatile uint16_t *globalPositionY;
extern volatile uint16_t *finishedGlobalPositionX;
extern volatile uint16_t *finishedGlobalPositionY;
extern volatile uint32_t *penWrite;
extern volatile uint16_t *maximumX;
extern volatile uint16_t *maximumY;
extern volatile uint16_t *fabIntStatus;


/* Plotter Constants
 * ========================================================================= */
#define PEN_UP 					130000
#define	PEN_DOWN				135000
#define START_MAX_X 			518
#define START_MAX_Y 			654
#define PLOTTER_DEFAULT_SPEED 	300000

// for tracking the current plotter operating mode
typedef enum {
	MIN 		= 0,
	HTTP 		= MIN,
	NUNCHUCK	= 1,
	CONFIG   	= 2,
	MAX 		= CONFIG,
	UNKNOWN 	= 3
} PLOTTER_MODE;


typedef enum {
	PLOTTER_LINE = 0,
	PLOTTER_MOVE = 1,
	PLOTTER_ARC  = 2,
	NOT_INIT = 3
} pinstr_t;

typedef struct {
	pinstr_t type;
	int16_t x;
	int16_t y;
} pcoord_t;

void PLOTTER_printCoord(pcoord_t *coord);

extern void delay ( volatile unsigned long int n);


/* LCD Tunnelling
 * ========================================================================= */
#ifdef ACTEL_STDIO_THRU_UART

#ifndef LCD_UART_ADDR
#define LCD_UART_ADDR      	COREUARTAPB_1
#endif

extern UART_instance_t g_lcd_uart;
extern int g_lcd_uart_init_done;

void _to_lcd_uart(char *ptr, int len );

#endif	/* ACTEL_STDIO_THRU_UART */

#endif /* PLOTTER_PLATFORM_H_*/
