Feature: Como un Usuario de PalPet, quiero poder Agendar Detalles de Adopción, para organizar mejor el proceso de adopción de mascotas y garantizar una experiencia fluida.

    Escenarios para detallar adopcion

Example: Selecciono horario de disponibilidad
    Given Estoy en la pagina de adopcion
    And Tengo una cuenta de PalPet
    When Cuando accedo a la seccion de agendar adopcion
    Then La plataforma muestra un calendario con horarios disponibles resaltados en verde

Example: Cambiar fecha de adopcion
    Given Estoy en mi perfil, en la sección de citas de adopcion
    And Tengo una cuenta de PalPet
    When Selecciono la opcion de Modificar Cita
    Then La plataforma muestra un calendario con horarios disponibles resaltados en verde

Example: Cancelar cita
    Given Estoy en mi perfil, en la sección de citas de adopcion
    And Tengo una cuenta de PalPet
    When Selecciono la opcion de Cancelar Cita
    Then Recibo una notificacion de cita cancelada

