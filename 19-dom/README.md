# Document Object Model

## Objectives
* The Document Object Model
    * HTML Source v DOM
    * Outline
* CSS Selectors (brief)
    * Individual selectors
      * Class
      * Id
      * Tag
      * Psuedo-selector (Not for DOM)
    * Combining selectors
      * Space between (#parent .child)
      * Chain (div.image)
* Selecting DOM nodes
    * node.querySelector
    * node.querySelectorAll
    * node.getElementsByTagName
    * node.getElementsById
    * node.getElementsByClassName
* Modifying DOM nodes
    * Storing node in a variable
    * Changing attributes
    * Removing
* Creating DOM objects
    * document.createElement
    * element.appendChild

## Activity
* Go to your favorite website and modify the DOM programmatically
  * Select elements - save to variable
  * Delete elements - delete at least 2
  * Modify elements - replace image url
  * Create elements and add to page - how do we do this?

## Notes
* Coercion of array-like objects into arrays
  * let arr = Array.prototype.slice.call(arrayLikeObject)
  * let arr = [...arrayLikeObject]
* How to tell a NodeList from an Array?
  * <obj>.constructor
