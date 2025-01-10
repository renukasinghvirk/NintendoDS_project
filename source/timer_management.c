#include "timer_management.h"

#include "graphics.h"

volatile int count = 0; // ensure variable is accessible

// Timer ISR
void ISR_TIMER2() {
    count++;
    if (count >= 12) {  // 12 intervals of 250ms = 3 seconds
        //graphics_setup_menu_main();
        TIMER2_CR = 0;       // Stop the timer
        irqDisable(IRQ_TIMER2); // Disable the interrupt
        return;
    }
}

// Function to wait for 3 seconds
void wait_3s() 
{
    count = 0;

    // Configure Timer2
    TIMER_DATA(2) = TIMER_FREQ_1024(4); // 250ms overflow
    TIMER2_CR = TIMER_ENABLE | TIMER_DIV_1024 | TIMER_IRQ_REQ;

    // Set and enable the interrupt
    irqSet(IRQ_TIMER2, &ISR_TIMER2);
    irqEnable(IRQ_TIMER2);

    // Wait for the timer to reach 3 seconds
    while (count < 12) {
        swiWaitForVBlank();  
    }
}

