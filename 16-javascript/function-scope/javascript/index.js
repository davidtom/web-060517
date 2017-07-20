
var foo = 'something'
// $foo = 'something'

function somethingElse(){
  // @@foo = 'somethingElse'
  var foo = 'somethingElse'



  console.log(foo)
  // @@foo = 'somethingElse'
}

somethingElse()
// which foo does this point to?
// $foo = 'something'
console.log(foo)


// 1.

// function timesThree(){}
//   return function multipleBy(arg){
//       arg*
//
//   }
// }


// hoisting
  // don't do it.
  // moves the declaration the

function somethingToHoist(){
  // var foobar;


  console.log(foobar)
  // var what;
  var foobar = function foo(){
    console.log('bar')
  }
}

somethingToHoist()
