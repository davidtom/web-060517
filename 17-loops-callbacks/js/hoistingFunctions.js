function hoistingAndFunctions() {
  function hoisting() {
    // Which lines cause errors? Figure out why and comment them out.
    console.log('Printing hoisted variables...\n');
    console.log(global_scope_var);   // Hoisted?
    console.log(lexical_scope_var);  // Hoisted?
    console.log(block_scope_var);    // Hoisted?
    console.log(block_scope_const);  // Hoisted?
    console.log('\n');

    global_scope_var        = 'declaring global var';
    var lexical_scope_var   = 'declaring lexical scope var';
    let block_scope_var     = 'declaring block scope var';
    const block_scope_const = 'declaring block scope const';
  }

  function definingFunctions() {
    /*  Questions:
     *    1. Which of these functions is hoisted with their definition?
     *    2. Which of these functions can you call by function name?
     *    3. What order do these functions run in?
     *
     *  Comment out lines that cause errors
     */

    console.log(fnStatementExample)
    console.log(fnExpressionExample)
    console.log(fnImmediatelyEnvokedExample)

    // Function statement
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function
    function fnStatementExample(text) {
      console.log('1. Function statement');
      console.log(text);
    }

    // Function expression
    // "A function expression is very similar to and has almost the same
    // syntax as a function statement... The main difference between a function
    // expression and a function statement is the function name, which can be
    // omitted in function expressions to create anonymous functions. A function
    // expression can be used as a IIFE (Immediately Invoked Function
    // Expression) which runs as soon as it is defined. See also the chapter
    // about functions for more information."
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/function
    var fnExpressionExample = function fnExpressionExample(text) {
      console.log('2. Function expression');
      console.log(text);
    };

    (function fnImmediatelyEnvokedExample(text) {
      console.log('3. Immediately invoked function expression');
      console.log(text);
    }(' - Defined third'))

    fnStatementExample(' - Defined first');
    fnExpressionExample(' - Defined second');
  }

  hoisting();
  definingFunctions();
}
