
// A. This
  // 1. If this is in a method, this refers to the object that receives the method call with dot notation.
//  Otherwise, global

obj = {}
obj.sayHi = function(){ console.log('from the method sayhi', this)
   (function what(){
    console.log('from inside what', this);
  }())

}

obj.someIteration = function(){

  [1, 2, 3].forEach(function() {
    console.log(this)
  }.bind(this)
)}



function forEach(callback){
  let array = [1, 2, 3]
  console.log(this)
  for (var i = 0; i < array.length; i++) {
    callback(  array[i])
  }
}


  // method
    // an object's attribute that points to a function

      // a. If this is called outside of any function it returns global
      // b. if a function is not called as a method



          // 3. ES6 /2015
      // this refers to the global object.
  // So just like in ruby, however we have functions that can be unattached to objects
//   obj.iteratorFn = function(){
// var that = this;
// ["fname", "lname"].forEach(function(elem){
//    that[elem] = 'bob'
// })
// }
  // Use the arrow function to maintain the scope


  function fn1(){
    return this;
  }

   var obj = {
   fn3: function(){
     return this;
   }
  };

  function fn1(){
 return this;
}

fn1();
window.fn1();


// effectively the same as above
window.fn2 = function(){
 return this;
};

window.fn2();
fn2();


var obj = {
 fn3: function(){

 }
};

obj.fn3();


var fn3 = obj.fn3;
fn3();

fn3.call(obj);




obj.myMethod = function(){

}
