*&---------------------------------------------------------------------*
*& Report ZCURSO_008
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_008.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETER p_name(10) TYPE c.
  PARAMETER p_1b(12) TYPE p DECIMALS 2.
  PARAMETER p_2b(12) TYPE p DECIMALS 2.
  PARAMETER p_3b(12) TYPE p DECIMALS 2.
  PARAMETER p_4b(12) TYPE p DECIMALS 2.

SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
  DATA ld_media(12) TYPE p DECIMALS 2.

  ld_media = ( p_1b + p_2b + p_3b + p_4b ) / 4.

*  IF ld_media < 60.
*    WRITE: 'Sua média anual foi de ', ld_media, ', você foi REPROVADO!.'.
*  ELSE.
*    WRITE: 'Sua média anual foi de ', ld_media, ', você foi APROVADO!.'.
*  ENDIF.

IF ld_media >= 0 AND  ld_media <= 50.
    WRITE: 'Sua média anual foi de ', ld_media, ', você foi REPROVADO!.'.
ELSEIF ld_media >= 51 AND  ld_media <= 59.
    WRITE: 'Sua média anual foi de ', ld_media, ', você QUASE PASSOU!.'.
ELSEIF ld_media >= 60  AND  ld_media <= 100.
    WRITE: 'Sua média anual foi de ', ld_media, ', você PASSOU!.'.
ELSE.
    WRITE 'Número inválido!'.
ENDIF.
