fcf.module({
  name:         "templates/blocks/planet.hooks.js",
  dependencies: [],
  module: function(){
    return {
      //
      // The hook is executed before assembling the template arguments. The function can be asynchronous
      //
      // hookBeforeBuild: (a_taskInfo) => {
      // },

      //
      // The hook is executed after assembling the template arguments. The function can be asynchronous
      //
      // hookAfterBuild: (a_taskInfo) => {
      // },

      //
      // The hook is executed after building the template's system arguments. The function can be asynchronous
      //
      // hookAfterSystemBuild: (a_taskInfo) => {
      // },

      //
      // The hook is called after the template is rendered. The function can be asynchronous
      //
      // hookAfterRender: (a_taskInfo) => {
      // },

      //
      // Object of hooks for programmatically populated arguments. The function can be asynchronous
      //
      hooksProgramableArgument: {
        //
        // Hook of the assembly of a programmatically populated argument created by the fcf.argProg() method with the name ARG_NAME
        // The function can be asynchronous
        // @result Returns the value of an argument or a Promise object
        //
        stars: (a_taskInfo) => {
          let stars = [];
          for(let i = 0; i < a_taskInfo.args.starsCount; ++i) {
            stars.push({
              left: 100*Math.random(),
              top: 100*Math.random()
            });
          }
          return stars;
        },
      },

      //
      // Object of the hooks preprocessing of the template arguments
      //
      // hooksBeforeArgument: {
      //   //
      //   // A preprocessing hook for an argument named ARG_NAME. The function can be asynchronous
      //   //
      //   ARG_NAME: (a_taskInfo) => {
      //   },
      //
      //   //
      //   // This hook is called to pre-process each argument of the template. The function can be asynchronous
      //   //
      //   "*": (a_taskInfo)=>{
      //   },
      // },

      //
      // Object of the hooks postprocessing of the template arguments
      //
      // hooksAfterArgument: {
      //   //
      //   // A post-processing hook for an argument named ARG_NAME. The function can be asynchronous
      //   // @result It can return an argument value or an undefined value if the argument is not redefined.
      //   //
      //   ARG_NAME: (a_taskInfo) => {
      //   },
      //
      //   //
      //   // This hook is called for post-processing of each template argument. The function can be asynchronous
      //   // @result It can return an argument value or an undefined value if the argument is not redefined.
      //   //
      //   "*": (a_taskInfo)=>{
      //   },
      // },
    };
  }
});
