fcf.module({
  name:         "templates/blocks/planet+earth.wrapper.js",
  dependencies: ["fcf:NClient/Wrapper.js"],
  module: function(Wrapper){
    return class WrapperEx extends Wrapper{

      constructor(a_initializeOptions){
        super(a_initializeOptions);
        this._start = new Date();
      }

      async initialize(){
        await super.initialize();
        this.timer();
      }

      timer(){
        let self = this;
        setTimeout(()=>{
          self.setArg("time", (new Date()).getTime() - self._start.getTime());
          self.timer();
        }, 1 / this.getArg("feq") * 1000);
      }

    };
  }
});
