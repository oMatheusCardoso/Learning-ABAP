*&---------------------------------------------------------------------*
*& Report ZCURSO_004
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_004.
*E002 - Programa que calcule a área de um circulo e escreva o resultado na tela
*
*Faça um programa que receba o raio e calcule a área de um círculo usando variáveis e
*constantes. O resultado deve ter 2 casas decimais.
*
*PI = 3.1415926535898
*Fórmula
*Area = (raio * raio)*PI
*
*A mensagem pode ser assim: "A area de um circulo com raio de X e Y."
*
*Use os dados abaixo para conferir se o programa está rodando corretamente
*Raio 10 = Area 314,16
*Raio 15 = Área 706,86
*Raio 2 = Area 12,57

CONSTANTS lc_pi(13) TYPE p DECIMALS 2 VALUE '3.1415926535898'.

DATA ld_raio(12) TYPE p DECIMALS 2.
DATA ld_area(12) TYPE p DECIMALS 2.

ld_raio = 10.
ld_area = ( ld_raio * ld_raio ) * lc_pi.


WRITE: 'A area de um circulo com raio de ',ld_raio,' é ',ld_area.
