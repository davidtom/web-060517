let API_BASE_URL = 'https://opentdb.com/api.php?amount=10'

let store = {games: [], questions: []}
let game_id = 0
let question_id = 0;

function render(template, selector) {
  $(selector).empty()
  $(selector).html(template)
}

$(function() {
  $('body').on('submit', 'form#game-selector', function(event) {
    event.preventDefault()
    let difficulty = `&difficulty=${event.currentTarget[0].value}`
    let questionType = "&type=boolean"
    fetch(API_BASE_URL+difficulty+questionType)
      .then(function(response) {
        console.log(response)
        return response.json()
      })
      .then(function(data) {
        render(new Game(data.results).template(), '#main-page')
      })
  })

  $('body').on('click', '.question-true', function(event) {
    const questionId = parseInt(this.dataset.id)
    const questionVal = !!this.dataset.val
    const question = Question.find(questionId)

    question.answered(question.answer === questionVal)
  })
})

class Game {
  constructor(results) {
    this.id = ++game_id
    this.questions = Question.build(results)
    store.games.push(this)
  }

  el() {
    return $(`#game-${this.id}`)
  }

  template() {
    return `
    <div class="game" id="game-${this.id}">
      <h1>Game ${this.id}</h1>
      ${this.questions.map(question => question.template()).join("\n")}
      <button id="new-game">Start New Game</button>
    </div>
    `
  }
}

class Question {
  static build(questions) {
    return questions.map(function(question) {
      return new Question(
        question.question,
        question.category,
        question.difficulty,
        question.correct_answer,
      )
    })
  }

  static find(id) {
    return store.questions.filter(function(question) {
      return question.id === id
    })[0]
  }

  constructor(text, category, difficulty, correctAnswer) {
    this.id = ++question_id
    this.text = text
    this.category = category
    this.difficulty = difficulty
    this.answer = correctAnswer === 'True' ? true : false
    store.questions.push(this)
  }

  el() {
    return $(`#question-${this.id}`)
  }

  answered(val) {
    this.correct = val
    this.el().addClass(`correct-answer-${val}`)
    this.el().find('button').attr('disabled', 'disabled')
  }

  template() {
    return `
      <div class="question" id="question-${this.id}">
        <h2 class="question-title">${this.text}</h2>
        <h3 class="question-category">${this.category}</h3>
        <h4 class="question-difficulty">${this.difficulty}</h4>

        <button class="question-true" data-id="${this.id}" data-val="1">True</button>
        <button class="question-false" data-id="${this.id}" data-val="0">False</button>
      </div>
    `
  }
}
