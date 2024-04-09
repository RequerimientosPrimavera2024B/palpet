Feature: Como un Usuario de PalPet, quiero poder verificar mi perfil, para lograr demostrar mi autenticidad y generar confianza en la comunidad.  
  
  Escenarios para verificar el perfil

  Example: En el que el usuario presenta la documentacion adecuada y rellena el formulario
    Given se presenta la documentacion
    Given se relleno el formulario
    When si se verifico el perfil
    Then me deberia decir que "Si"

  Example: En el que el usuario presenta la documentacion adecuada pero no rellena el formulario
    Given se presenta la documentacion
    Given no se relleno el formulario
    When si se verifico el perfil
    Then me deberia decir que "No"

  Example: En el que el usuario rellena el formulario pero presenta documentacion inadecuada
    Given se presenta documentacion erronea
    Given se relleno el formulario
    When si se verifico el perfil
    Then me deberia decir que "No"

  Example: En el que el usuario rellena el formulario pero no incluye los documentos
    Given no se presenta documentacion
    Given se relleno el formulario
    When si se verifico el perfil
    Then me deberia decir que "No"

  Example: En el que el usuario no presenta la documentacion adecuada y no rellena el formulario
    Given no se presenta la documentacion
    Given no se relleno el formulario
    When si se verifico el perfil
    Then me deberia decir que "No"