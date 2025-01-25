#!/bin/bash

# Función de ayuda
function show_help {
    echo "Uso: $0 [palabra]"
    echo
    echo "Este script busca líneas que comiencen con la 'palabra' especificada en los archivos dentro de /usr/share/wordlists/"
    echo "y guarda los resultados en el archivo lista.txt."
    echo
    echo "Opciones:"
    echo "  -h, --help   Muestra esta ayuda."
    echo
    echo "Ejemplo:"
    echo "  $0 transf"
    exit 0
}

# Verifica si se pasa la opción de ayuda
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
fi

# Verifica si se ingresó una palabra como argumento
if [ -z "$1" ]; then
    echo "Error: Debes proporcionar una palabra para buscar."
    echo "Usa '$0 --help' para más información."
    exit 1
fi

# Asignar la palabra ingresada por el usuario
palabra="$1"

# Mostrar una barra de progreso simulada
echo -n "Buscando, por favor espera: ["
for i in {1..20}; do
    sleep 0.2  # Simula un pequeño retraso para la barra de progreso
    echo -n "="
done
echo "] Hecho."

# Ejecutar el comando con la palabra proporcionada
egrep -r "^$palabra" /usr/share/wordlists/* | sed 's/^[^:]*://' > lista.txt

# Confirmar que el archivo se ha creado
if [ -s lista.txt ]; then
    echo "Resultados guardados en lista.txt."
else
    echo "No se encontraron resultados para la palabra '$palabra'."
    rm -f lista.txt
fi
