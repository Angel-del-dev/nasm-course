
section .data ; define constant variables
    ; strings, magic numbers, terminating strings

section .bss
    ; reserving space in memory for future data

section .text
    ; _start
    ; main

; Compiling nasm 
    ; nasm ;f elf64 file.asm -> file.o
    ; Getting the file.o and converting it to executable
    ; ld -m elf_i386 -o file file.o


; registers: hardware implemented variables



mov dest, src ; copy data from one place to another
movzx eax, 3 ; Put the binary of 3 into a 32 bit register every remaining bit will be initialized to 0
movzx eax, byte ptr [ebx] ; Puts the first bit of the list into a 32 bit register
    ; Brackets are used for dereferencing
movsx dest, serc

and dest, src
or
xor
test eax, eax ; Checks weather eax = 0

add eax, ebx ; eax += ebx
sub eax, 15 ; eax ;= 15

mov ax, 15
mul bx ; dx:ax = ax * bx (Because the operation might give you a bigger result than 16 bits, the first will be allocated in ax and the rest in dx)

div bx ; ax Rdx = dx:ax / bx (Result is stored in ax but the remainder is stored in dx)

; flags register
    ; CF = carry (1 yes, 0 no)
    ; OF = overflow flag
    ; ZF = zero flag (1 yes, 0 no) if the result of the aritmetic operation is zero, ZF = 1
    ; SF = negative 1, positive 0
    ; PF = parity (even, odd)

; jump operations
jmp label1 ; structure the program
    ; Add n to any of these to get its opposite for example jno or jnle
    je label ; (jump equal) will only jump if ZF of 1 
    jne label ; opposite to je
    jz ; jump zero
    jc ; jump carry
    jo ; jump overflow
    jg ; jump greater
    js ; jump sign flag
    jge ; jump greater than equal
    jl ; jump less
    jle ; jump less equal
    ja ; jump above
    jae ; jump above equal
    jb/jbe ; jump below/equal

; call
call label ; save the current location on your code
    ; stack
    push rip ; rip = instruction pointer(holds the current address of the instruction thats being used)
    jmp label ; breakdown of the call operation
ret
    pop rip ; removes the instruction pointer and calls the next one

cmp eax, ebx ; compare operator
cmp eax, 25
; eax - ebx(Updates the flags register)

; shifting
; eax = 11110000
shr eax, 1 ; shift eax by one bit, so eax = 01111000
shl ; eax = 11100000(we loose 1 bit because we work with 8 bits, and the CF gets called)
sar ; same as shr, but the most significant bit(left) has a value of 1
sal ; same as sar, but the least significant bit(right) has a value of 0
;https://youtu.be/DNPjBvZxE3E?t=2169
