OUTPUT_FORMAT(elf32-i386)
ENTRY(start)

SECTIONS
{
    . = 0x100000;
    .multiboot ALIGN(4K) : {
        *(.multiboot)
    }
    .text ALIGN(4K) : {
        *(.text)
    }
    .rodata ALIGN(4K) : {
        *(.rodata)
    }
    .data ALIGN(4K) : {
        *(.data)
    }
    .bss ALIGN(4K) : {
        *(.bss)
    }
}
