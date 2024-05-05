const { Given, When, Then } = require('cucumber');

let perfilUsuario = {
  id: 123,
  nombre: 'UsuarioDemo',
  adopcionesAnteriores: [
    { id: 1, mascota: 'Gato', resultado: 'Éxito' },
    { id: 2, mascota: 'Perro', resultado: 'Éxito' },
    { id: 3, mascota: 'Conejo', resultado: 'Éxito' }
  ],
  perfilDestacado: false
};

Given('que un usuario ha realizado múltiples adopciones a lo largo del tiempo', function () {
  perfilUsuario.adopcionesAnteriores = [
    { id: 1, mascota: 'Gato', resultado: 'Éxito' },
    { id: 2, mascota: 'Perro', resultado: 'Éxito' },
    { id: 3, mascota: 'Conejo', resultado: 'Éxito' }
  ];
});

When('el usuario actualiza su perfil con información detallada sobre el bienestar de las mascotas adoptadas', function () {
  perfilUsuario.perfilDestacado = true;
});

Then('el perfil del usuario se destaca en la plataforma por su historial de adopciones exitosas', function () {
  if (perfilUsuario.perfilDestacado) {
    console.log('El perfil del usuario se destaca en la plataforma por su historial de adopciones exitosas.');
  } else {
    console.log('Error: El perfil del usuario no se ha destacado correctamente en la plataforma.');
  }
});
