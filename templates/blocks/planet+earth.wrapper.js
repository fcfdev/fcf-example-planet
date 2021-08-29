fcf.module({
  name:         "templates/blocks/planet+earth.wrapper.js",
  dependencies: ["fcf:NClient/Wrapper.js"],
  module: function(Wrapper){
    return class WrapperEx extends Wrapper{

      constructor(a_initializeOptions){
        super(a_initializeOptions);
        this._lastTime  = undefined;
        this._pause     = true;
      }

      attach(){
        if (this._pause && !this.getArg("pause"))
          this.timer();
        this._pause = this.getArg("pause");
        return super.attach();
      }

      timer(){
        let self = this;
        setTimeout(()=>{
          if (self.getArg("pause")){
            self._lastTime = undefined;
            return;
          }
          let time = (new Date()).getTime();
          if (!this._lastTime)
            this._lastTime = time - (1 / this.getArg("feq") * 1000);
          self.setArg("time", self.getArg("time") + (time - this._lastTime));
          this._lastTime = time;
          self.timer();
        }, 1 / this.getArg("feq") * 1000);
      }

    };
  }
});
