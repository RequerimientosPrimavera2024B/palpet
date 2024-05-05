Feature: Como usuario que ha adoptado una mascota, quiero recibir pruebas del bienestar de la mascota de su nuevo dueño para asegurarme de que está siendo bien cuidada.
  
  Escenarios para recibir seguimiento de mascotas

  Example: En el que el usuario solicita una prueba y no la recibe
    Given Solicito una prueba de bienestar de la mascota
    When La prueba no llega antes del plazo establecido
    Then Se contactan a las autoridades por medio de PALPET

  Example: En el que el usuario recibe una prueba y no le convence
    Given Solicito una prueba de bienestar de la mascota
    And Recibio una prueba en imagen o video
    When No es convencido por la prueba
    Then Puede solicitar mas pruebas

  Example: En el que el usuario recibe una prueba y le convence
    Given Solicito una prueba de bienestar de la mascota
    And Recibio una prueba en imagen o video
    When La prueba verifica que la mascota esta en buenos cuidados
    Then Se termina la sesion de seguimiento

  Example: En el que el usuario recibe una prueba y ve maltrato
    Given Solicito una prueba de bienestar de la mascota
    And Recibio una prueba en imagen o video
    When La prueba verifica que la mascota no esta siendo cuidada adecuadamente
    Then Se contactan a las autoridades por medio de PALPET
