#!/bin/sh
# Genera index.html (archivo autónomo para abrir en cualquier navegador) a partir de src/clave-de-oro.html
cd "$(dirname "$0")"
{
  printf '<!DOCTYPE html>\n<html lang="es">\n<head>\n<meta charset="UTF-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat src/clave-de-oro.html
  printf '\n</html>\n'
} > index.html
