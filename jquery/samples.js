// PY&AT
var greetings = document.querySelectorAll('p');

var ourGreetings = [...greetings];

ourGreetings.forEach(function (element) {
  element.addEventListener('click', function(){
    debugger
    if (this.innerHTML === 'Hola') {
      this.innerHTML = 'Hello';
    }
    else {
      this.innerHTML = 'Hola';
    }
  })
});



// Jeremy, Peter & Racquel:

$('p').on('click', function() {
  if(this.innerHTML === "Hola") {
    this.innerHTML = "Hello"
  } else {
    this.innerHTML = "Hola"
  };

})



// Catherine + Jason:
function clickGreeting(){
  $('p').on('click', function(){
    if(this.innerHTML === " Hello"){
      this.innerHTML = " Hola"
    } else if (this.innerHTML === " Hola"){
      this.innerHTML = " Hello"
    };
  });
};

$(document).ready(function(){

  clickGreeting();

});


// AS & TC

$(document).ready(function() {

  var pArray = Array.prototype.slice.call($('p'));

  pArray.forEach((p)=>{
    $(p).on('click',()=>{
      toggle(p);
    })
  })

})

function toggle(p){
  const messages = ["Hola", "Hello"]
  $(p)[0].innerHTML = (($(p)[0].innerHTML === messages[0]) ? messages[1] : messages[0]);
}




// Charles & Eli (Bad Code Alert)

[...$('p')].forEach((ptag) => {
	ptag.addEventListener("click", (event) => {
		if (ptag.innerHTML == " Hola"){
			ptag.innerHTML = " Hello"
        } else if (ptag.innerHTML == " Hello"){
			ptag.innerHTML = " Hola"
        }
    })
});


// D & D

function onClickSayHello(){
  $('p:eq(1)').on("click", function(e){
    if(this.innerHTML === "Hola"){
      this.innerHTML = 'Hello'
    } else if (this.innerHTML === "Hello"){
      this.innerHTML = "Hola"
    }
  })
}

$(document).ready(function(){
  onClickSayHello()
})














Will & Jess:
function translate() {
  let allParas = $('p')
  let paras = [...allParas]
  return paras.map(function(para) {
    para.addEventListener('click', (function(par) {
      debugger;
      if (par.innerText == "Hola") {
        par.innerText = "Hello"
      } else if (par.innerText == "Hello") {
        par.innerText = "Hola"
      }
    })
  )})
};

// Turns out 'par' in the above function is a MouseEvent...

$(document).ready(function() {
  translate();
});
