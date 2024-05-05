Feature: Como un Usuario de PalPet, quiero recibir recompensas por completar exitosamente procesos de adopción de mascotas, para sentirme incentivado y reconocido por mi contribución.

    Escenarios de recompensar tras proceso de adopcion

Example: Recibir recompensa
    Given Tengo una cuenta de PalPet
    When Termine un proceso de adopcion
    Then Me notificaron que recibi una recompensa

Example: Recibir medalla en la plataforma
    Given Tengo una cuenta de PalPet
    When Termine un proceso de adopcion por tercera vez
    Then Me notificaron que recibi una recompensa y me dieron la medalla de Adoptante Estrella



