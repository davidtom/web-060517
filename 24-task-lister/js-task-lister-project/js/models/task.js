// Task Model
function createTask(){
  var id = 0
  return class Task {
    constructor(description, priority, listId){
      this.description = description
      this.priority = priority
      this.listId = listId
      this.id = ++id
      store.tasks.push(this)
    }
    destroy(){
      return store.tasks = store.tasks.filter((task) => {
        return task.id !== this.id;
      })
    }
  }
}

var Task = createTask()
