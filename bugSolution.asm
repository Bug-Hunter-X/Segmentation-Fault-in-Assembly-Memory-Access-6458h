mov ecx, some_memory_limit ; Define a memory limit
mov eax, ebx
add eax, esi
mul DWORD 4 ; Calculate address
jmp check_memory

check_memory:
cmp eax, ecx ; check for overflow
jg handle_overflow ; handle overflow
mov eax, [eax] ; access memory safely

handle_overflow:
; Handle the situation where memory access is out of bounds
; e.g., print an error message, return an error code, etc.
; ... error handling ... 