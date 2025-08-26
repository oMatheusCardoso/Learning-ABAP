*
*Autor Matheus Cardoso
*Desde 12/08/2025
*
REPORT zcurso_teste02.

START-OF-SELECTION.
  DATA: lt_data TYPE STANDARD TABLE OF saplane. "Variavel para pegar o banco de saplane para lt_data
  DATA  ls_data TYPE saplane. "

  SELECT *
    INTO TABLE lt_data
    FROM saplane.

  LOOP AT lt_data INTO ls_data.
    WRITE ls_data-planetype.
    WRITE ls_data-producer.
    NEW-LINE.
  ENDLOOP.
