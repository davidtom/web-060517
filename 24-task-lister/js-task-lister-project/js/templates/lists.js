function listsHtml(lists){
  return lists.map(function(list){
    return listHtml(list)
  }).join(' ')
}

function listHtml(list){
  let tasks = tasksHtml(list.tasks())
  return `<div class="list">
  <h2><button class="destroy-list">x</button> ${list.title}</h2>
  <ul id="list-${list.id}" data-id="${list.id}">
    ${tasks}
  </ul>
  </div>`
}

function tasksHtml(tasks){
  return tasks.map(function(task){
    return `<li> Description: ${task.description} Priority: ${task.priority} </li>`
  }).join(' ')
}

function selectionsHtml(lists){
  return lists.map(function(list){
    return `<option value="${list.id}">${list.title}</option>`
  }).join(' ')
}
