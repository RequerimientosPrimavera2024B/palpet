Feature: Verificación de Perfiles de Usuarios en PalPet

  Scenario: Verificar perfil de usuario
    Given que un usuario ha solicitado la verificación de su perfil
    When el administrador revisa el perfil del usuario
    Then el perfil del usuario se marca como verificado
