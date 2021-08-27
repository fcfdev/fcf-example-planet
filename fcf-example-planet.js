const fcf = require("fcf");

fcf.application.initialize()
.then(async ()=>{

  //let [MODULE_NAME] = await fcf.require(["MODULE_PATH"]);

  return fcf.application.run();
})
.catch((a_error)=>{
  fcf.log.err("APPLICATION", a_error);
})

