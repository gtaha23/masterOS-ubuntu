#include "interrupts/idt.h"
#include "vga.h"
#include "gdt.h"

void kmain(void);

void kmain(void) {
	Reset();
	print("MasterOS v0.5.9 Delta (GRUB Migration)\r\n");
	initGDT();
	print("GDT & TSS is working!\r\n");
	initIDT();
	print(1/0);
}
