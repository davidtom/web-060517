const store = {teams: []}
let id = 0
class Team {
  constructor(name, city){
    this.id = ++id
    this.name = name;
    this.city = city
    store.teams.push(this)
  }
}


new Team('sixers', 'philly')
new Team('cavs', 'cleveland')
new Team('mavericks', 'dallas')


console.log('it adds items to the store upon constructing', store.teams.length === 3)
console.log('it increments the id', store.teams.length === store.teams[store.teams.length - 1].id)
console.log('it adds a team and city attribute', new Team('nets', 'brooklyn').name === 'nets')
