# Список изменений
* Следующие флаги были применены ко всем файлам:
`gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./<filename>.c -S -o ./<filename>.s`
* Убран лишний код 
``` assembly
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"

	.section	.note.GNU-stack,"",@progbits

	.section	.note.gnu.property,"a"

	.align 8

	.long	 1f - 0f

	.long	 4f - 1f

	.long	 5

0:

	.string	 "GNU"

1:

	.align 8

	.long	 0xc0000002

	.long	 3f - 2f

2:

	.long	 0x3

3:

	.align 8

4:
```
* Поменял параметр i в функции getpi
<br>(QWORD PTR -8[rbp] на xmm3)
### Попытка изменить другие регистры привела к некорректной работе программы.
