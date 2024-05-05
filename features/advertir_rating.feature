Feature: Como usuario responsable, quiero recibir una advertencia cuando interactúo con un usuario que tiene un bajo rating para evitar posibles estafas o maltrato animal.
  
  Escenarios para advertencias por rating

  Example: En el que el usuario no tiene suficiente rating para mostrar una advertencia
    Given El usuario no tiene suficientes valoraciones para tener un rating promedio
    When Mostrar advertencia
    Then Se muestran advertencia de rating desconocido

  Example: En el que el usuario tiene un rating negativo
    Given El usuario tiene un rating negativo
    When Mostrar advertencia
    Then Se advierte de posible usuario problematico

  Example: En el que el usuario tiene un rating positivo
    Given El usuario tiene un rating postivo
    When Mostrar advertencia
    Then No se muestra ninguna advertencia
