; Pseudo-assembly for Buy2Get3
section .text
    global _start

_start:
    ; Function arguments (item.cost, quantity)
    mov eax, [item_cost]      ; Load item cost into eax
    mov ebx, [quantity]       ; Load quantity into ebx
    xor ecx, ecx              ; Initialize total cost (ecx = 0)

.loop_start:
    cmp ebx, 0                ; Check if quantity == 0
    je .end_loop              ; If quantity == 0, exit loop
    dec ebx                   ; Decrement quantity
    mov edx, ebx
    and edx, 2                ; Check if i MOD 3 == 0
    jz .skip_add              ; Skip addition if true
    add ecx, eax              ; Add item cost to total

.skip_add:
    jmp .loop_start           ; Repeat loop

.end_loop:
    mov [result], ecx         ; Store result
    ; Exit program
    mov eax, 1                ; Syscall: exit
    int 0x80

section .data
item_cost dd 45               ; Example: item cost = 45
quantity dd 4                 ; Example: quantity = 4
result dd 0                   ; Store result
