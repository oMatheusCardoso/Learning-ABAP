REPORT ZCURSO_013.

START-OF-SELECTION.
  DATA: BEGIN OF ls_cliente
    , id TYPE int4
    , nome(20) TYPE c
    , email(50) TYPE c
    , END OF ls_cliente.

ls_cliente-id = 1.
ls_cliente-nome = 'João'.
ls_cliente-email = 'joao@gmail.com'.

  WRITE ls_cliente-id.
  WRITE ls_cliente-nome.
  WRITE ls_cliente-email.

*  DATA ld_id TYPE int4.
*  DATA ld_nome(20) TYPE c.
*  DATA ld_email(50) TYPE c.

*  ld_id = 1.
*  ld_nome = 'João'.
*  ld_email = 'joao@gmail.com'.

*  WRITE ld_id.
*  WRITE ld_nome.
*  WRITE ld_email.
