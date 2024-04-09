Feature: En PalPet, para garantizar la seguridad y veracidad de sus usuarios, se necesitara verificar la identidad del usuario para poder acceder a los servicios de PalPet. Está verificación será confirmada por medio de una foto de una identificación valida del país (INE, pasaporte, etc). Los usuarios no verificados no podrán tener acceso a la información de otros usuarios, adoptar mascotas, dar mascotas en adopción ni tener chats con otros usuarios.

Escenarios para Verificar una cuenta

Example: En el que la verificación es denegada
    Given el usuario trata de verificar su cuenta
    When En el que el usuario no cunenta con los requisitos
    Then la verificación es denegada

Example: En el que el usuario ya mando la solicitud pero sigue en pendiente
    Given el usuario mando su solicitud
    When La solicitud sigue en espera
    Then la verificación aun no es otorgada

Example: En el que el usuario no continua el proceso
    Given el usuario empieza su solicitud
    When La solicitud no es finalizada
    Then la verificación no es otorgada y se borra el forms

Example: En el que la foto no es legible
    Given el usuario trata de verificar su cuenta
    When la foto no es legible
    Then la verificación es denegada

Example: En el que la identificación no es vigente
    Given el usuario trata de verificar su cuenta
    When la identificación no es vigente
    Then la verificación es denegada

Example: En el que la verificación es acceptada
    Given el usuario trata de verificar su cuenta
    When todos los datos cumplen los requisitos 
    Then la verificación es acceptada

Example: En el que el usuario recibe la confirmación
    Given el usuario verifica su cuenta
    When la verificación es acceptada 
    Then se envia una notificasion avisando de la confirmacion al usuario 

Example: En el que el usuario completa la información y reenvia el formulario
    Given el usuario intento verifica su cuenta y fue denegada
    When el usuario reenvia el formulario corregido
    Then se verifica que su nueva informacion sea correcta (se maneja como si fuera la primera vez que trata de verificar) 
