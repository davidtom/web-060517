// Charles & Sarah


// When we type in a teachers name, and hometown, and then click submit we want to:
// ...

// import store from './store';



$(document).ready(() => {
  makeLisForTeachers()
});

function makeLisForTeachers(){
    $('ul').children().remove()
    store.teachers.forEach( (teacher) => {
    let teachLi = document.createElement("LI")
    teachLi.innerHTML = `name: ${teacher.name} hometown: ${teacher.hometown}`
    $('ul').append(teachLi)
  })
  addListener();
}

function createTeacher () {
  id = 0
  return class {
    constructor(name, hometown){
      this.name = name
      this.hometown = hometown
      this.id = ++id
      store.teachers.push(this)
    }
  }
}


function addListener() {
  $('#submit').on('click', (event) => {
      let name = $('#name').val()
      let hometown = $('#hometown').val()
      teacher = new Teacher(name, hometown)
      makeLisForTeachers();
      event.preventDefault();
  })
}

Teacher = createTeacher();

let charles = new Teacher("Charles", "Manasquan")
let sarah = new Teacher("Sarah", "Atlanta")

// end Charles &Sarah

Jason and Adames
let store = {teachers: []}

function createTeacher(){
  let idCounter = 0

  return class Teacher {
    constructor(name, hometown){
      this.name = name
      this.hometown = hometown
      this.id = ++idCounter
      store.teachers.push(this)
    }
  }
}

let teacher = createTeacher()

//The event is our controller and route

$(document).ready(function(){
  $('form').on('submit', function(event){

//These are our teacher params

    let name = $('#name').val();
    let hometown = $('#hometown').val();

//The variable below accesses our model

    let newTeacher = new teacher(name, hometown)

//The jQuery below is our render view

    $('ul').append(`<li>name: ${newTeacher.name} hometown: ${newTeacher.hometown}</li>`)

    event.preventDefault();
  })
})

Will, Tom, and Alex
$(document).ready(function() {

  $('form').on('submit', (event)=>{
    event.preventDefault();
    newTeacher = new teacher($('#name').val(), $('#hometown').val());
    appendToPage(newTeacher);
  })

})

let store = {teachers: []}

let teacher = createTeacher();

function createTeacher(){

  let teachersCounter = 0;

  return class Teacher {
    constructor(name, hometown){
      this.name = name;
      this.hometown = hometown;
      store.teachers.push(this);
      this.id = ++teachersCounter;
    }
  }
}

function appendToPage(newTeacher){
  $('#list').append(`<li> Name: ${newTeacher.name} Hometown: ${newTeacher.hometown} </li>`);
}
