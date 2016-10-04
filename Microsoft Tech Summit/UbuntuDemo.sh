#pre demo
sudo apt-get purge sysbench
sudo apt-get install ruby
sudo apt-get install gcc

#Comprobar linux
ls -a
lsb_release -a
cat /proc/cpuinfo
clear

#comprobar instalar apps y rendimiento
sudo apt-get install sysbench
sysbench --test=cpu run
clear

#comprobar sistema de archivos 
cd /mnt/c/
ls -a

#explorador de archivos
C:\Users\[user]\AppData\Local\lxss

#volver a home
cd $home
clear

#comprobar python
echo "print 'Hello Tech Summit from Python'" > hello.py
python hello.py
clear

#comprobar ruby
nano hello.rb
 puts 'Hello Tech Summit from Ruby!'
 Ctrl+X
ruby hello.rb
clear

#comprobar C
nano hello.c
 #include <stdio.h>

 main()
 {
 printf("Hello Tech Summit from C!\n");
 return 0;
 }
 Ctrl+X
gcc hello.c -o hello
./hello

#Comprobar CMD Powershell
bash -c "echo 'Hello Tech Summit from CMD!'"

#Comprobar VS Code
View > Integrated Terminal
echo 'Hello Tech Summit from VS Code!'
Ctrl+Shift+P > RunSelectedCode