1. teams index
  a list of my teams
2. when I click on a team
  top three players with the most points
3. click on a specific player
  shows a dropdown of that players info
    hometown
    points
    year of birth
    each player has x box, which will remove that player

store = {players: [], teams: []}
  team
    has many players
  player
    belongs to team

  build out store

team

  name
  city

  new Team('sixers', 'philly')
    store is updated
    team has an id
    the id is private
  automatically
    view displays that team
