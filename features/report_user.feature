Feature: Como un usuario de "MiApoyoIteso", quiero poder reportar perfiles de cualquier tipo de usuario que incumplan las normas de la comunidad

    Escenarios para seleccionar reportar cualquier usuario

Example: Reportar usuario
    Given Estoy en la pagina de un usuario de PalPet
    And Tengo una cuenta de MiApoyoIteso
    When Selecciono el boton Reportar Perfil
    Then Veo un formulario donde adjunto la informacion y evidencia del reporte

Example: Hacer reporte
    Given Estoy en el formulario de reporte de usuario
    And Tengo una cuenta de MiApoyoIteso
    When Agrego detalles del reporte
    Then Me aparecen posibles razones del reporte

Example: Mandar reporte
    Given Estoy en el formulario de reporte de usuario
    And Tengo una cuenta de MiApoyoIteso
    When Envio el formulario completo
    Then Recibo una confirmacion del reporte enviado

