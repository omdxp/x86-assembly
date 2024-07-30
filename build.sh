#!/usr/bin/env bash
nasm -f bin 01.hello_world.asm -o 01.hello_world.bin
nasm -f bin 02.registers.asm -o 02.registers.bin
nasm -f bin 03.segmentation.asm -o 03.segmentation.bin
nasm -f bin 04.stack.asm -o 04.stack.bin
nasm -f bin 05.memory.asm -o 05.memory.bin
