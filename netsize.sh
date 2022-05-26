#! /bin/bash


#Se ingresa a la data a través del comando cd y se localiza la carpeta Saavedra2013 donde se tomarán los archivos
#El comando echo se usa para imprimir el mensaje
#El comando Cat se usa para imprimir el contenido de los archivos
#El comando | para concatenar las funciones
#El comando wc -l para contar el número de líneas
#El comando head -n1 se usa para ver la primera fila
#El comando tr -d borra los espacios que existen entre los 1 y 0
#El comando tr "\n" elimina los espacios del final
#El comando wc -c cuenta los caracteres


echo "EJERCICIO A"
echo "ITURRALDE LINA"
echo "File Name: ../data/Saavedra2013/n1.txt"
echo "Name of rows:"
cat ../Saavedra2013/n1.txt | wc -l
echo "Name of columns:"
head -n1 ../Saavedra2013/n1.txt | tr -d " " | tr -d "\n" | wc -c
