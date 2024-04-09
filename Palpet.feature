Feature: Como usario de Palpet, quiero poder acceder a la información del usuario con el que estoy chateando en el chat de la aplicación, para conocer mas sobre el y facilitar la comunicación

Scenario: El botón no responde al interactuar
    Given Juan, un usuario intenta ver los datos del otro usuario con el que esta hablando para conseguir su correo
    When Revisa las opciones del chat
    Then El usuario debe poder hacer clic en un icono o enlace en la conversación del chat para acceder a la información del otro usuario

Scenario: La vinculación de los enlaces con el destino es érronea
    Given Juan intentar usar el enlace del correo es redirigido a las redes sociales del usuario
    When Es imposible realizar la acción que el usario requiere
    Then El usuario debe poder hacer clic en un icono o enlace en la conversación del chat para acceder a la información del otro usuario

Scenario: Se ha establecido contacto con un nuevo usuario
    Given Juan tratando de solucionar su situación contacta con un administrador
    When Se levanta el reporte 
    Then La información del usuario, que puede incluir su nombre, ciudad, mascotas dadas en adopción, etc, debe ser mostrada claramente en la aplicación

Scenario: La información forma parte de un perfil de usuario
    Given El usuario la usa como herramienta de acoso
    When Se da aviso al administrador
    Then La información del usuario, que puede incluir su nombre, ciudad, mascotas dadas en adopción, etc, debe ser mostrada claramente en la aplicación

Scenario: Se crea una plataforma con prioridad en la elegancia y diseño simplificado
    Given Juan se adapta facil a la plataforma y sus funcionalidades
    When Da una reseña positiva a la aplicación
    Then La funcionalidad debe de ser intuitiva y facil para los usuarios

Scenario: La interfaz resulta lo suficientemente atractiva para llamar la atención de nuevos usuarios
    Given Juan, recomienda la aplicación a sus conocidos que buscan mascotas
    When Se une mas gente
    Then La funcionalidad debe de ser intuitiva y facil para los usuarios

