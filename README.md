# wordsearch IIS

Este script ayuda en el modulo Attacking Common Applications mas especificamente en IIS Tilde Enumeration o en español Enumeración de tilde de IIS, en este modulo se muestra el comando (egrep -r ^transf /usr/share/wordlists/* | sed 's/^[^:]*://' > /tmp/list.txt) que lo he convertido en un script y guarda el resultado de la busqueda en una lista con el nombre "lista.txt" el cual quedara ubicado en la misma ruta desde donde se ejecuto el script.

