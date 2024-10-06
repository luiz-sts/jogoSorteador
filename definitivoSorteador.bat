@echo off
chcp 65001
title Sorteador Game
color f1

:inicio
set /a numero=(%random% %%50) + 1
set /a chances=5
echo ----------------------------------
echo Tente advinhar o número de 1 a 50
echo ----------------------------------
echo Voce tem %chances% chances!

:loop

set /p tentativa=Digite sua tentativa: 
::Verificar tentativa 
set /a tentativa=%tentativa%
if %tentativa%==%numero% (
	echo Parabens, voce venceu!
	goto :inicio 
)
	
if %tentativa% lss %numero% (
	echo e maior que %tentativa%
	) else if %tentativa% gtr %numero (
	  echo e menor que %tentativa%
	) else (
    echo Entrada inválida! Digite um número entre 1 e 50.
    goto :loop
)

	
:: Reduzir o número de chances
set /a chances-=1	
if %chances% gtr 0 (
	echo Você ainda tem %chances% chances.
    goto :loop
) else (
    echo Você perdeu! O número era %numero%.
    goto :inicio
)

:fim