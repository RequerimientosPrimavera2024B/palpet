Feature: Ordenamiento por Calidad de Adopciones en PalPet

  Scenario: Actualizar perfil con información sobre adopciones anteriores
    Given que un usuario ha realizado múltiples adopciones a lo largo del tiempo
    When el usuario actualiza su perfil con información detallada sobre el bienestar de las mascotas adoptadas
    Then el perfil del usuario se destaca en la plataforma por su historial de adopciones exitosas
