*&---------------------------------------------------------------------*
*& Report ZCURSO_015
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_015.

DATA lt_plane TYPE STANDARD TABLE OF saplane.
DATA ls_plane TYPE saplane.

DATA lt_scarr TYPE STANDARD TABLE OF scarr.
DATA ls_scarr TYPE scarr.

DATA lt_spfli TYPE STANDARD TABLE OF spfli.
DATA ls_spfli TYPE spfli.

SELECT *
  INTO TABLE lt_plane
  FROM saplane.

SELECT *
  INTO TABLE lt_scarr
  FROM scarr.

SELECT *
  INTO TABLE lt_spfli
  FROM spfli.

"BREAK-POINT.

*WRITE 'LOOP AT'.
*NEW-LINE.
*LOOP AT lt_plane INTO ls_plane WHERE seatsmax > 200.
**  WRITE: 'sy-index', sy-index.
**  WRITE: 'sy-tabix', sy-tabix. "imprime a linha
*
*  WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*  NEW-LINE.
*
*ENDLOOP.

*WRITE 'WHILE'.
*NEW-LINE.
*WHILE sy-index <= lines( lt_plane ).
**  WRITE: 'sy-index', sy-index.
**  WRITE: 'sy-tabix', sy-tabix.
*
*  READ TABLE lt_plane INTO ls_plane INDEX sy-index.
*  WRITE: ls_plane-planetype, ls_plane-seatsmax.
*
*  NEW-LINE.
*ENDWHILE.

*WRITE 'DO X TIMES'.
*NEW-LINE.
*DO 3 TIMES.
*WRITE: 'sy-index', sy-index.
*WRITE: 'sy-tabix', sy-tabix.
*
*READ TABLE lt_plane INTO ls_plane INDEX sy-index.
*WRITE: ls_plane-planetype, ls_plane-seatsmax.
*NEW-LINE.
*
*ENDDO.

WRITE 'LOOP dentro de LOOP'.
NEW-LINE.

LOOP AT lt_scarr INTO ls_scarr.
  WRITE ls_scarr-carrname.
  WRITE sy-uline.

  LOOP AT lt_spfli INTO ls_spfli WHERE carrid = ls_scarr-carrid.
    WRITE: ls_spfli-cityfrom, ls_spfli-cityto.
    NEW-LINE.
    ENDLOOP.

ENDLOOP.
