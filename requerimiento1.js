const { Given, When, Then } = require('cucumber');

let perfilUsuario = {
  id: 123,
  nombre: 'UsuarioDemo',
  solicitadoVerificacion: true,
  verificado: false
};

Given('que un usuario ha solicitado la verificación de su perfil', function () {
  perfilUsuario.solicitadoVerificacion = true;
});

When('el administrador revisa el perfil del usuario', function () {
  if (perfilUsuario.solicitadoVerificacion) {
    perfilUsuario.verificado = true;
  }
});

Then('el perfil del usuario se marca como verificado', function () {
  if (perfilUsuario.verificado) {
    console.log('El perfil del usuario ha sido verificado con éxito.');
  } else {
    console.log('Error: No se pudo verificar el perfil del usuario.');
  }
});
