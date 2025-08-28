*&---------------------------------------------------------------------*
*& Report ZCURSO_013V2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_013V2.

START-OF-SELECTION.
  DATA: BEGIN OF ls_localizacao
    , pais(2) TYPE c
    , uf(2) TYPE c
    , cidade(50) TYPE c
    , END OF ls_localizacao.

ls_localizacao = 'BRRJRio de janeiro'.

WRITE ls_localizacao-pais.
WRITE ls_localizacao-uf.
WRITE ls_localizacao-cidade.
