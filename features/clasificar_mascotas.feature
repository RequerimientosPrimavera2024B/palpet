Feature: Como usuario registrado, quiero clasificar a mis mascotas para que otros usuarios puedan encontrarlas más fácilmente.
  
  Escenarios para clasificar mascotas

  Example: En el que el usuario entra en la seccion y selecciona etiquetas predefinidas
    Given Entra en la seccion de clasificacion
    When Selecciona etiquetas predefinidas
    Then Se muestran las etiquetas seleccionadas en el perfil de la mascota

  Example: En el que el usuario entra en la seccion y no selecciona ninguna etiqueta
    Given Entra en la seccion de clasificacion
    When No se selecciona ninguna etiqueta
    Then No se muestran etiquetas en el perfil de la mascota

  Example: En el que el usuario añade una etiqueta personalizada y cumple con las normas de PALPET
    Given Entra en la seccion de clasificacion
    And Añade una etiqueta personalizada
    When La etiqueta cumple con las normas de PALPET
    Then Se muestra la etiqueta personalizada en el perfil de la mascota

  Example: En el que el usuario añade una etiqueta personalizada que incumple con las normas de PALPET
    Given Entra en la seccion de clasificacion
    And Añade una etiqueta personalizada
    When La etiqueta no cumple con las normas de PALPET
    Then Se muestra un aviso de cambiar la etiqueta al usuario
