assemble() {
  nasm -f bin main.asm -o ./dist/main.bin
  qemu-system-x86_64 ./dist/main.bin
}