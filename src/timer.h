extern struct InterruptRegisters* regs;

void initTimer();
void onIRQ0(struct InterruptRegisters *regs);
