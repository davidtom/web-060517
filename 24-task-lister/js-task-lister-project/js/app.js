// Initialize

var store = {lists: [], tasks: []}

$(function() { // on document ready
  $('#add_list').on('submit', function(event){
    event.preventDefault()
    let title = $('#list_title').val()
    new List(title)
    render(listsHtml(store.lists), '#lists')
    render(selectionsHtml(store.lists), '#select_list')
    $('#list_title').val(' ')
  })

  $('#add_task').on('submit', function(event){
    event.preventDefault()
    let description = $('#task_description').val()
    let priority = $('#task_priority').val()
    let listId = parseInt($('#select_list').val())
    new Task(description, priority, listId)
    render(listsHtml(store.lists), '#lists')
    $('#task_priority').val('')
    $('#task_description').val('')
  })

  $('body').on('click', '.destroy-list', function(){
    let id = $(this).parent().parent().find("ul").data("id")
    list = List.find(id)
    list.destroy()
    render(listsHtml(store.lists), '#lists')
    render(selectionsHtml(store.lists), '#select_list')
  })
});

function render(html, into){

  $(into).empty()
  $(into).append(html)
}
