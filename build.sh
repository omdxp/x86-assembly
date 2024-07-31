#!/usr/bin/env bash
nasm -f bin 01.hello_world.asm -o 01.hello_world.bin
nasm -f bin 02.registers.asm -o 02.registers.bin
nasm -f bin 03.segmentation.asm -o 03.segmentation.bin
nasm -f bin 04.stack.asm -o 04.stack.bin
nasm -f bin 05.memory.asm -o 05.memory.bin
nasm -f bin 06.interrupts.asm -o 06.interrupts.bin
nasm -f bin 07.hardware.asm -o 07.hardware.bin
nasm -f bin 08.math.asm -o 08.math.bin
nasm -f bin 09.conditions.asm -o 09.conditions.bin
nasm -f bin 10.lodsb.asm -o 10.lodsb.bin
