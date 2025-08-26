*&---------------------------------------------------------------------*
*& Report ZCURSO_003
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_003.

*comentar
*um
*bloco
*ctrl .

DATA ld_id TYPE i.
DATA ld_nome(100) TYPE C.
DATA ld_dtnasc TYPE d.
DATA ld_hrnasc TYPE t.
DATA ld_peso(6) type p DECIMALS 3.
DATA ld_descr TYPE string.
DATA ld_login(5) TYPE n.

ld_id = 1.
ld_nome = 'JOSÉ DA SILVA'.
ld_dtnasc = '19900201'.
ld_hrnasc = '153512'.
ld_peso = '80.000'.
ld_descr = 'Um cliente que compra em grande volume.'.
ld_login = 1.

WRITE 'Dados do Cliente'.
NEW-LINE.

WRITE (12) 'Id:'.
WRITE ld_id LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12)'Nome:'.
WRITE ld_nome.
NEW-LINE.

WRITE (12)'Nascimento:'.
WRITE ld_dtnasc DD/MM/YYYY.
WRITE: ld_hrnasc+0(2), ':', ld_hrnasc+2(2), ':', ld_hrnasc+4(2).
NEW-LINE.

WRITE (12)'Peso:'.
WRITE ld_peso LEFT-JUSTIFIED.
NEW-LINE.

WRITE (12)'Descrição:'.
WRITE ld_descr.
NEW-LINE.

WRITE (12)'Login:'.
WRITE  ld_login.
