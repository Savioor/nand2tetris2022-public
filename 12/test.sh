cd ./$1Test
rm $1.jack
cp ./../$1.jack ./$1.jack
chmod +x ./../../../tools/JackCompiler.sh
./../../../tools/JackCompiler.sh ./Main.jack
./../../../tools/JackCompiler.sh ./$1.jack
chmod +x ./../../../tools/VMEmulator.sh
./../../../tools/VMEmulator.sh

