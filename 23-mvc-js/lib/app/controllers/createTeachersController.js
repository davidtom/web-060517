function createTeacher(){
  event.preventDefault()
  let name = $('[name="teacher[name]"]').val()
  let hometown = $('[name="teacher[hometown]"]').val()
  new Teacher(name, hometown)
  render()
}

function render(){
  let name = $('[name="teacher[name]"]').val('')
  let hometown = $('[name="teacher[hometown]"]').val('')
  $('.container').empty()
  let teachers = store.teachers.map(function(teacher){return `<li data-id={${teacher.id}> ${teacher.name} ${teacher.hometown} <span class="x">X<span> </li>`}).join(" ")
  let content = `<ul> ${teachers} </ul>`
  $('.container').append(content)
}
