#!/bin/bash

cd ./EXEMPLO_E_1_3

echo -e "Compilando e executando programa para encontrar os autovalores e autofunções...\n\n"

gfortran -o espectro_melhorado \
  constantes.f90 problema.f90 definicao_EDO.f90 integrador_rk4.f90 \
  atirador.f90 modulo_bisseccao.f90 espectro_melhorado.f90 solucao.f90 \
  main_melhorado.f90 && ./espectro_melhorado

gnuplot *.gp

echo "\n\nAutovalores e autofunções encontradas e salvas!"


