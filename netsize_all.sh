#! /bin/bash

#Se crea un archivo netsize_all.sh
#Se emplea el comando nano para editar el contenido del archivo netsize_all.sh
#Se ingresa a la data
#El comando echo para imprimir el mensaje
#El comando for se emplea para generar un bucle
#Se usa *.txt para seleccionar los archivos de la misma carpeta que contienen la misma terminación
#El comando $ indica la variable
#El comando | para concatenar funciones
#El comando wc -l cuenta el número de líneas
#El comando done para finalizar
#Repetimos el procedimiento con el siguiente bucle
#El comando head -n1 se puede ver la primera fila
#El comando tr -d borra los espacios que existen
#El comando tr "\n" elimina los espacios del final
#El comando wc -c cuenta los caracteres
#El comando >netsize_all.txt se usa para guardar 1 vez la información y al colocar >>netsize_all.txt se guardará toda la información en un archivo .txt

echo "EJERCICIO B ANALISIS DE DATOS CON BUCLE FOR" >netsize_all.txt
echo "ITURRALDE LINA" >>netsize_all.txt

for netsize_all in /user/netsize_all
do   echo "${netsize_all##*/}"
done

echo "Number of rows" >>netsize_all.txt
for i in ../Saavedra2013/*.txt
do           cat $i | wc -l >>netsize_all.txt
done

echo "Number of columns" >>netsize_all.txt
for i in ../Saavedra2013/*.txt
do  head -n 1 $i| tr -d " " | tr -d "\n" | wc -c >>netsize_all.txt
done

