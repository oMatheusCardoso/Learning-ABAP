FORM calcular_media.
   ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.
ENDFORM.

FORM escrever_mensagem.
   IF ld_media >= 60.
    ld_mensagem = |APROVADO: A média anual do { p_nome } é { ld_media }.|.
  ELSE.
   	ld_mensagem = |'REPROVADO! A média anual do { p_nome } é  { ld_media }.|.
  ENDIF.

  WRITE ld_mensagem.
ENDFORM.
