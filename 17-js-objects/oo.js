function myFunction(){

}

let dog = {function bark(){ console.log('bark')}}


// constructor functions

function Dog(name, breed) {
  this["name"] = name
  this["breed"] = breed
};

// var foo;
// if(x < 3){
//
// }else {
//
// };


new Dog({name: 'fido', breed: 'samoyd'})
// {height: 100, weight: 200, name: 'ed'}
function Horse(name, breed){
  this.name = name
  this.breed = breed
  this.greeting = function (){
    console.log(`hello my name is ${this.name}`)
  }
}

new Horse({height: 100, weight: 200, name: 'ed'})

1. creates a new object
2. set this as the new object that was created
3. runs the code inside of the function
4. return an object

let keys = Object.keys(arg)
// ["height", "weight", "name"]
keys.forEach(function(key){
  // height
  // {}[height] = 100
  this[key] = arg[key]
            // {height: 100}[height] -> 100
})
// class Dog
  // def initialize
    // self.name = ''
  // end
// end

// Task - make a horse
// potentially add in mass assignment into the constructor


// prototypes
  // declare the function one time, and use that same
  // function across all objects initialized by a constructor function


  // function Horse (name){
  //   this.name = name
  //   this.
  // }
  //
  // Horse.prototype.sayHi = function (){
  //
  // }
  // Horse.prototype -> {sayBye: function(){'ciao ciao'}}

  ed = new Horse
    // {}

    // every object initialized from the constructor function
    // has a reference to its constructors prototype property



class Horse {
  constructor(name, breed){
    this.name = name;
    this.breed = breed
  }
  sayHello(){
    console.log(`hello from ${this.name}`)
  }
}



// class Horse
// def initialize(name, breed)
// end
// end
