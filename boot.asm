
section .multiboot_header ;-----------multiboot section start----------------
header_start:
  dd 0xe85250d6 ;magic number for GRUB multiboot
  dd 0; protected mode code: won't let us do anything dangerous 
  dd header_end- header_start; header length 
    ; checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

    ; required end tag
    dw 0    ; type
    dw 0    ; flags
    dd 8    ; size
header_end: ;-----------multiboot section start----------------

global start
section .text
bits 32
_start:
  mov word [0xb8000], 0x0248
