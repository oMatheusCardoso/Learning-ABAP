*&---------------------------------------------------------------------*
*& Report ZCURSO_005
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_005.
*E003 - Impressão de convites para uma festa
*
*Crie um programa para receber o nome e sobrenome do convidado. Ao executar, você vai
*concatenar o nome e sobrenome e armazenar em uma variável com o nome completo.
*Depois imprima o convite conforme template abaixo
*
*Convite para a festa
*
*Olá Fulano!
*
*Você foi convidado para a festa de fim de ano, contamos com a sua presença!
*
*Atenciosamente,
*EMPRESA XYZ

DATA ld_nome(10) TYPE c.
DATA ld_sobrenome(10) TYPE c.
DATA ld_nomecompleto(21) TYPE c.

ld_nome = 'Matheus'.
ld_sobrenome = 'Cardoso'.

*CONCATENATE ld_nome ld_sobrenome
*  INTO ld_nomecompleto SEPARATED BY ' '.

ld_nomecompleto = |{ ld_nome } { ld_sobrenome }|.

SET BLANK LINES ON.

WRITE 'Convite para a festa!'.
NEW-LINE.
SKIP.

WRITE: 'Olá ',ld_nomecompleto,' !'.
NEW-LINE.
SKIP.

WRITE 'Você foi convidado para a festa de fim de ano, contamos com a sua presença!'.
NEW-LINE.
SKIP.

WRITE 'Atenciosamente,'.
NEW-LINE.

WRITE 'EMPRESA XYZ'.
