

//
//




// function teacherNum(){
//   //  teachersCount++
//   return ++teachersCount
// }

// store.teachers.length
let store = {teachers: [{id: 1, name: 'tim'}, {id: 2, name: 'avi'}],
 courses: [{name: 'javascript', teacherId: 1}, {name: 'elixir', teacherId: 1}, {name: 'ruby', teacherId: 2}]}
//
function createTeacher(){
  let teachersCount = 0
  // private variable only

  return class Teacher {
    constructor(name){
      this.id = ++teachersCount
      this.name = name
      store.teachers.push(this)
    }
    static find(id){
      return store.teachers.filter((teacher)=> {return teacher.id == id})
    }
    courses(){
      // go to the store
      // find the list of courses that has the teacherId
      // of the current teacher
      return store.courses.filter((course) => {
        return course.teacherId === this.id
      })
    }
  }
}
let teacher = createTeacher()

// function Teacher(){
//
// }
//
// Teacher.find = function(){
//
// }

function createCourse(){
  let coursesCount = 0
  return class Course {
    constructor(name, teacher){
      this.id = ++coursesCount
      this.name = name;
      this.teacherId = teacher.id
    }
  }
}
let course = createCourse()

let steven = new teacher('steven')
let avi = new teacher('avi')
new course('ruby', steven)
new course('javascript', avi)
new course('elixir', avi)
// function foo(){
//   // bar
//   var bar = 'bar'
//
//   return function myOtherFunction(){
//     console.log(bar)
//     // bar
//   }
//   // bar
// }


//

// let obj = {
//   name: 'avi',
//   greeting: function(){
//      var name = this.name
//       console.log(`hello my name is ${name}`)
//     }
// }







// avi = new Teacher('avi')
// // {id: 1, name: 'avi'}
// course = new Course('ruby', avi)
// // {name: 'ruby', teacher_id: 1}
// course.teacher()
// teacher.courses()
// single source of truth


// Goals:

// 1. Simply by creating new teachers will add to the store and add an id
// 2. calling teacher.courses() returns a list of courses
// 3. calling course.teacher() returns the teacher object
