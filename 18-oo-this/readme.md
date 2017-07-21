1. define method
  vs function, vs property
2. then have method call a function  (with self executing function)
3. When decide a function outside of a method
4. pull off method from object and turn it into a function

5. With a callback function - forEach
  - fix it with that equals this, adn then do it

Now with changing the context
 - variables, defined globally,
 - so change it with call()
- and then in a callback, call with the outside scope
