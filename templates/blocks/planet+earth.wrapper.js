fcf.module({
  name:         "templates/blocks/planet+earth.wrapper.js",
  dependencies: ["fcf:NClient/Wrapper.js"],
  module: function(Wrapper){
    return class WrapperEx extends Wrapper{

      constructor(a_initializeOptions){
        super(a_initializeOptions);
        this._lastTime  = undefined;
      }

      async initialize(){
        await super.initialize()
        this.timer();
      }

      timer(){
        let self = this;
        if (!this.getArg("pause")){
          let time = (new Date()).getTime();
          let diff = this._lastTime ?  time - this._lastTime : 1 / this.getArg("feq") * 1000;
          this.setArg("time", this.getArg("time") + diff);
          this._lastTime = time;
        } else {
          self._lastTime = undefined;
        }
        setTimeout(()=>{
          self.timer();
        }, 1 / this.getArg("feq") * 1000);
      }

    };
  }
});
