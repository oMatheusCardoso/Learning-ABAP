*&---------------------------------------------------------------------*
*& Report ZCURSO_FIELDSYMBOL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_FIELDSYMBOL.

DATA ld_text TYPE char100.

ld_text = 'Teste'.

FIELD-SYMBOLS <ld_text> TYPE char100.
ASSIGN ld_text to <ld_text>.

IF <ld_text> IS ASSIGNED.
  WRITE: 'TEM REFERENCIA'.
ELSE.
  WRITE: 'NAO TEM REFERENCIA'.
ENDIF.
