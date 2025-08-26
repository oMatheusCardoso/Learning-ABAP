*&---------------------------------------------------------------------*
*& Report ZCURSO_006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_006.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETER: p_nome(10) TYPE c.
  PARAMETER: p_1bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_2bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_3bim(12) TYPE p DECIMALS 2.
  PARAMETER: p_4bim(12) TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  Data ld_media(12) TYPE p DECIMALS 2.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

  IF ld_media >= 6.
    WRITE: 'APROVADO: A média anual do ', p_nome,' é ', ld_media,'.'.
  ELSE.
    WRITE: 'REPROVADO! A média anual do ', p_nome,' é ', ld_media,'.'.
  ENDIF.
