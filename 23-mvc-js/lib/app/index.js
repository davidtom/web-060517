
$(function(){
  $('form').on('submit', function(event){
    createTeacher()
  })
  $('body').on('click', '.x', function(){
    // event delegation
      // to attach listeners to html that is not on the document at document ready
    // this.
    // this.parent().data('id')
    // 1
    // get the data
    // find related teacher in the store
    // remove him
    // render

  })
})

// When we type in a teachers name, and hometown, and then click submit we want to:
// ...

// def create
//   params = {user: {name: 'bob', hometown: 'philly'}}
//   User.create(params)
//   render '/users/show'
// end

// models
  // store my data
  // domain logic of the entity
// controllers
  // passing data
  //
// routes
  //
