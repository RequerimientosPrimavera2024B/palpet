Feature: Como un Usuario de PalPet que desea apoyar a una causa noble, quiero poder realizar una donación segura y transparente a una organización, servicio o usuario verificado, para lograr ayudar a quienes lo necesitan y contribuir a un mundo mejor.

Escenarios para Poder donar

Example: El usuario puede acceder a una sección de "Donaciones" en la aplicación PalPet y esta verificado.
    Given el usuario esta verificado
    When el usuario intenta acceder  a la sección de "Donaciones" 
    Then el usuario puede acceder a la sección de "Donaciones" 
 

Example: El usuario puede acceder a una sección de "Donaciones" en la aplicación PalPet y no esta verificado.
    Given el usuario no esta verificado
    When el usuario intenta acceder a la sección de "Donaciones" 
    Then se le pide al usuario verificar su cuenta
 

Example: En el que el usuario cancela la opción
    Given el usuario intenta Donar
    When el usuario cancela la opción
    Then se cancela la doncacion y se regresa al menu de donaciones
 

Example: En el que el usuario selecciona el beneficiario
    Given el usuario intenta Donar
    When el usuario selecciona el beneficiario
    Then continua con la donacion (pago)
 

Example: El usuario ingresa un monto no valido
    Given el usuario intenta Donar
    When el usuario ingresa un monto no valido
    Then se le pide al usuario cambiar el montoa uno valido
 

Example: En el que el usuario ingresa un monto valido
    Given el usuario intenta Donar
    When el usuario ingresa un monto valido
    Then se continua con el pago
 

Example: En el que la transacción fue exitosa
    Given el usuario Dono
    When el usuario finaliza la donacion
    Then se notifica del exito de la donacion
 

Example: En el que no se hizo la donacion
    Given el usuario no dono
    When el usuario finaliza la donacion
    Then se notifica de la cancelacion de la donacion

Example: En el que la transacción fue exitosa
    Given el usuario Dono y el beneficiario reciobio el monto
    When Se finaliza la donacion
    Then se notifica del exito de la transacción
 

Example: En el que el beneficiario no es valido (no esta verificado)
    Given beneficiario no es valido (no esta verificado)
    When el usuario selecciona el beneficiario no es valido
    Then se le informa al usuario que el beneficiario no es valido
 

Example: En el que el beneficiario ya fue verificado
    Given beneficiario es valido (esta verificado)
    When el usuario selecciona el beneficiario
    Then se inicia el proceso de donacion
 

Example: En el que el beneficiario no cuenta con donaciones
    Given En el que el beneficiario no cuenta con donaciones
    When el usuario intenta ver el historial de donaciones de el beneficiario
    Then  se indica que aun no ha recibido donaciones
 

Example: En el que el beneficiario no ha usado sus donaciones
    Given En el que el beneficiario no ha usado sus donaciones
    When el usuario intenta ver el historial de fondos de el beneficiario
    Then  se indica que aun no ha usado sus fondos

Example: En el que no se ha generado ningún impacto
    Given En el que el beneficiario no ha usado sus donaciones
    When PalPet publica el informe periódico sobre el impacto de las donaciones
    Then  se indica que la organización no se generado ningún impacto
 

Example: En el que un usuario a destacado entre los donantes
    Given un usuario hace una donacion
    When el usuario resalta sobre otras donaciones
    Then el usuario es destacado entre los donantes y se le da una recompenza (tiempo de palpetPlus)
 

 

