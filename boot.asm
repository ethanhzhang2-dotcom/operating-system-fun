
section .multiboot_header
header_start:
  dd 0xe85250d6 ;magic number for GRUB multiboot
  dd 0; protected mode code: won't let us do anything dangerous 
  dd header_end- header_start; header length 
header_end:


