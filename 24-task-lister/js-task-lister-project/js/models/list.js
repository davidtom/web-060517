// List Model

function createList() {
  let id = 0
  return class {
    constructor(title){
      this.title = title
      this.id = id++
      store.lists.push(this)
    }
    tasks(){
      return store.tasks.filter((task) => {
        return task.listId == this.id;
      })
    }
    static find(listId){
      return store.lists.filter(function(list){
        return list.id == listId;
      })[0]
    }
    destroy(){
      this.tasks().forEach(function(task){
        task.destroy()
      })

      store.lists = store.lists.filter((list) => {
        return list.id !== this.id;
      })
    }
  }
}

var List = createList()
