Feature:Como un Usuario de PalPet que se encuentra en una conversación de chat, quiero poder compartir fotos y videos, para lograr enriquecer la comunicación y expresar mejor mis ideas.

Escenarios para Poder pasar fotos y videos en un chat

Example: En el que el usuario esta verificado y puede acceder a la opción de subir foto/video
    Given el usuario esta verificado
    When el usuario accede a la opción de subir foto/video
    Then el usuario puede acceder a la opción de subir foto/video

Example: En el que el usuario no esta verificado y se bloquea la opción de subir foto/video
    Given el usuario no esta verificado
    When el usuario accede a la opción de subir foto/video
    Then el usuario no puede acceder a la opción de subir foto/video

Example: En el que el usuario permitió el acceso a la galería
    Given el usuario permitió el acceso a la galería
    When el usuario accede a la opción de subir foto/video
    Then el usuario no puede acceder a la opción de subir foto/video

Example: En el que el usuario no permitió el acceso a la galería
    Given el usuario no permitió el acceso a la galería
    When el usuario accede a la opción de subir foto/video
    Then se informa al usuario y le pregunta si desea tomar una foto/video


Example: En el que el usuario edita la imagen / video
    Given En el que el usuario edita la imagen / video
    When el usuario sube una foto/video
    Then se informa en el chat que la foto/video fue alterada

Example: En el que el usuario sube la foto/ video original
    Given En el que el usuario edita la imagen / video
    When el usuario sube una foto/video
    Then se informa en el chat que la foto/video no fue alterada por medio de la app

Example: En el que la foto/video es eliminada del chat
    Given existia una foto/video en el chat
    When la foto/video es eliminada del chat
    Then se informa en el chat que la foto/video fue eliminada

Example: En el que la foto/video permanece en el chat
    Given existia una foto/video en el chat
    When la foto/video permanece en el chat
    Then la foto/video permanece en el chat

Example: En el que la foto/video es reportada o detectada que no cumple las normas de la app
    Given existie una foto/video en el chat
    When la foto/video es reportada o detectada que no cumple las normas de la app
    Then se elimina y se le informa en el chat que la foto/video fue eliminada

Example: En el que la foto / video cumple las normas.
    Given existie una foto/video en el chat
    When la foto / video cumple las normas.
    Then la foto/video permanece en el chat