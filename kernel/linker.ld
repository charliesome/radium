ENTRY(loader)
OUTPUT_FORMAT("elf32-i386")

SECTIONS {
    . = 0x00100000;

    .text : {
        *(.multiboot_header)
        *(.text)
    }

    .rodata ALIGN (0x1000) : {
        *(.rodata)
    }

    .data ALIGN (0x1000) : {
        *(.data)
    }

    .bss : {
        sbss = .;
        *(COMMON)
        *(.bss)
        ebss = .;
    }

    .end_of_image : {
        *(.end_of_image)
    }
}
