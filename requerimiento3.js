const { Given, When, Then } = require('cucumber');

let usuario = {
  id: 123,
  nombre: 'UsuarioDemo',
  necesidadAsistencia: true
};

let chatbot = {
  activo: true,
  respuestas: {
    adopcion: '¡Hola! ¿En qué puedo ayudarte con el proceso de adopción?'
  }
};

Given('que un usuario necesita orientación sobre el proceso de adopción', function () {
  usuario.necesidadAsistencia = true;
});

When('el usuario interactúa con el chatbot de soporte', function () {
  if (chatbot.activo && usuario.necesidadAsistencia) {
    console.log('Usuario: Hola, necesito ayuda con el proceso de adopción.');
    console.log(`Chatbot: ${chatbot.respuestas.adopcion}`);
  }
});

Then('el chatbot proporciona orientación y asistencia rápida y eficiente', function () {
  if (chatbot.activo && usuario.necesidadAsistencia) {
    console.log('Chatbot: ¿Hay algo más en lo que pueda ayudarte?');
  } else {
    console.log('Error: El chatbot no proporcionó la asistencia esperada.');
  }
});
