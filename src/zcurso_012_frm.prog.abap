FORM calcular_media
  USING ud_1bim ud_2bim ud_3bim ud_4bim
  CHANGING cd_media.
  DATA ld_media(12) TYPE p DECIMALS 2.
  ld_media = ( ud_1bim + ud_2bim + ud_3bim + ud_4bim ) / 4.
  gd_media = ld_media.
ENDFORM.

FORM escrever_mensagem.
   IF gd_media >= 60.
    gd_mensagem = |APROVADO: A média anual do { p_nome } é { gd_media }.|.
  ELSE.
   	gd_mensagem = |'REPROVADO! A média anual do { p_nome } é  { gd_media }.|.
  ENDIF.

  WRITE gd_mensagem.
ENDFORM.
