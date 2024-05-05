Feature:Como un Usuario de PalPet con una cita o reserva programada, quiero poder pagar el servicio de forma segura, para lograr confirmar mi cita y acceder al servicio para mi mascota.

Escenarios para Pago de servicios mediante la app

Example: En el que el usuario accede a el apartado pagar un servicio
    Given el usuario esta logeado
    When el usuario intenta accede a el apartado pagar un servicio
    Then se consultan los servicios pendientes por pagar

Example: En el que el usuario no entra al apartado
    Given el usuario no esta logeado
    When el usuario intenta acceder a el apartado pagar un servicio
    Then se pide al usuario que este logeado

Example: En el que el usuario no ha pagado un servicio solicitado
    Given el usuario esta logeado
    When el que el usuario no ha pagado un servicio solicitado
    Then se le pide al usuario que pague el servicio o lo cancele 



Example: En el que el método de pago no ha sido dado de alta
    Given el usuario esta intentando pagar
    When el método de pago no ha sido dado de alta
    Then se le pide al usuario que de dealta un método


Example: En el que el el método de pago ha sido dado de alta
    Given el usuario esta intentando pagar
    When el método de pago es correcto
    Then se efectua el cobro


Example: En el que el no se pudo efectuar el cobro al método de pago seleccionado
    Given el usuario esta intentando pagar
    When ocurrio un error
    Then se le informa al usuario y se regresa al menu de servicios pendientes



Example: En el que los datos son erroneos
    Given el usuario esta intentando pagar
    When los datos dados son erroneos
    Then se le informa al usuario y se le niega continuar (hasta que sean correctos)


Example: En el que todo esta correcto
    Given el usuario esta intentando pagar
    When los datos dados son correctos
    Then continua el pago

Example: En el que se pudo efectuar la operacion
    Given el usuario pudo pagar
    When el usuario finalizo el pago
    Then se le informa al usuario y se regresa al menu de servicios pendientes

Example: En el que no se pudo efectuar la operacion
    Given ocurrio un error
    When el usuario esta intentando pagar
    Then se le informa al usuario y se regresa al menu de servicios pendientes





