let store = {teachers: [{}, {}], courses: []}

//
//
class Teacher {

}

class Course {

}


avi = new Teacher('avi')
// {id: 1, name: 'avi'}
course = new Course('ruby', avi)
// {name: 'ruby', teacher_id: 1}
course.teacher()
teacher.courses()
// single source of truth


// Goals:

// 1. Simply by creating new teachers will add to the store and add an id
// 2. calling teacher.courses() returns a list of courses
// 3. calling course.teacher() returns the teacher object
