Feature: Como un Adoptante, quiero poder realizar videollamadas para conocer a la mascota que estoy considerando adoptar, para tomar una decisión informada sobre la adopción.

    Escenarios de para realizar videollamadas con mascota 

Example: Enviar solicitud de llamada
    Given Estoy en proceso de adopcion
    And Tengo una cuenta de PalPet
    When Envio una seleccion mandar solicitud de videollamada
    Then El propietario recibe una solicitud

Example: Solicitud de llamada cancelada
    Given Estoy en proceso de adopcion
    And Envio una solicitud de videollamada
    When El propietario rechaza la solicitud
    Then Recibo una notificacion de videollamada rechazada

Example: Limite de tiempo
    Given Estoy en proceso de adopcion
    And Estoy en una videollamada
    When Pasa el limite de tiempo
    Then Se cierra la llamada y ambos usuarios recibimos una notificacion


