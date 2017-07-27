// let paragraphs = document.querySelectorAll('p');
//
// paragraphs.forEach(function(el) {
//   const phrases = ['Hola', 'Hello'];
//   const phrasesLength = phrases.length;
//
//   el.addEventListener("click", function(event) {
//     const targetEl = event.target;
//     const targetElName = targetEl.tagName;
//
//     if (targetElName === 'P') {
//       const targetText = event.target.textContent;
//       const targetTextIndex = phrases.indexOf(targetText);
//       const newTextIndex = phrasesLength - (targetTextIndex + 1);
//
//       debugger;
//       targetEl.innerHTML = phrases[newTextIndex]
//     }
//   })
// })

document.addEventListener('click', function(event) {
  const phrases = ['Hola', 'Hello'];

  if (event.target.tagName === 'P') {
    const targetTextIndex = phrases.indexOf(event.target.textContent);
    const newTextIndex = phrases.length - (targetTextIndex + 1);

    event.target.innerHTML = phrases[newTextIndex];
  }
});
