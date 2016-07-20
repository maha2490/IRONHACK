// init.js

if (window.SandwichApp === undefined) {
  window.SandwichApp = {};
}

SandwichApp.init = function () {
  // 3rd party setup code here
  console.log("You are ONLINE!");
};

$(document).on("turbolinks:load", function(){
 	SandwichApp.init();
})
