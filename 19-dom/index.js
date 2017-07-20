function removeLinks() {
  let links = document.querySelectorAll("li .nav-link")

  links.forEach(function(node) {
    node.remove();
  })
}

function removeBody() {
  let bodyEls = document.querySelectorAll('main, footer')

  bodyEls.forEach(function(node) {
    node.remove();
  })
}
