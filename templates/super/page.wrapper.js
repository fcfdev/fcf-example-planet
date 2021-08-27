fcf.module({
  name:         "templates/super/page.wrapper.js",
  dependencies: ["fcf:NClient/Wrapper.js", "fcfSimpleAuthorization:Client.js"],
  module: function(Wrapper, authClient){
    return class WrapperEx extends Wrapper{

      constructor(a_initializeOptions){
        super(a_initializeOptions);
      }

      onSingin() {
        authClient.createSingInDialog();
      }

      onLogout() {
        authClient.logout();
      }

      onRegistration() {
        authClient.createRegistrationDialog();
      }

    };
  }
});
