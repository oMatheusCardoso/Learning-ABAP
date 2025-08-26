*&---------------------------------------------------------------------*
*& Report ZCURSO_009
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_009.
SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETER p_cat(1) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
*  CASE p_cat.
*    WHEN 'A'.
*      WRITE 'Moto'.
*    WHEN 'B'.
*      WRITE 'Carro'.
*    WHEN 'C'.
*      WRITE 'Veículos de Carga'.
*    WHEN 'D'.
*      WRITE 'Transporte de passageiros'.
*    WHEN 'E'.
*      WRITE 'Caminhões'.
*    WHEN OTHERS.
*      WRITE 'Categoria Inválida!'.
*  ENDCASE.

DATA ld_descricao TYPE string.

  CASE p_cat.
    WHEN 'A'.
      ld_descricao = 'Moto'.
    WHEN 'B'.
      ld_descricao = 'Carro'.
    WHEN 'C'.
      ld_descricao = 'Veículos de Carga'.
    WHEN 'D'.
      ld_descricao = 'Transporte de passageiros'.
    WHEN 'E'.
      ld_descricao = 'Caminhões'.
    WHEN OTHERS.
      ld_descricao = 'Categoria Inválida!'.
  ENDCASE.

  WRITE ld_descricao.
