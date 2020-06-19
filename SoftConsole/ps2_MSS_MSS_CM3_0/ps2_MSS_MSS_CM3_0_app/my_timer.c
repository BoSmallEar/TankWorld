#include "my_timer.h"

void MYTIMER_init(void){}

void MYTIMER_enable(void)
{
    MYTIMER->control |= ENABLE_MASK;
}

void MYTIMER_disable(void)
{
    MYTIMER->control &= ~ENABLE_MASK;
}

void MYTIMER_setOverflowVal(uint32_t value)
{
    uint32_t * timerAddr = (uint32_t*)(MYTIMER);
    *timerAddr = value; // overflowReg is at offset 0x0
}

uint32_t MYTIMER_getCounterVal(void)
{
    uint32_t * timerAddr = (uint32_t*)(MYTIMER);
    return *(timerAddr+1); // counterReg is at offset 0x4
}

void DELAY_init(void){}

void DELAY_enable(void)
{
	DELAY->control |= ENABLE_MASK;
}

void DELAY_disable(void)
{
	DELAY->control &= ~ENABLE_MASK;
}

void DELAY_setOverflowVal(uint32_t value)
{
    uint32_t * delayAddr = (uint32_t*)(DELAY);
    *delayAddr = value; // overflowReg is at offset 0x0
}

uint32_t DELAY_getCounterVal(void)
{
    uint32_t * delayAddr = (uint32_t*)(DELAY);
    return *(delayAddr+1); // counterReg is at offset 0x4
}
