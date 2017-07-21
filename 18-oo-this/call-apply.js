var myVariable = "I'm global!"; 
 
function printMyVariable(){ 
 return this.myVariable; 
} 
 
// without additional arguments, apply() & call() are interchangeable 
printMyVariable();  
printMyVariable.apply(this);  
 
printMyVariable.apply({ myVariable: "I'm local!" });  

function titleize(first, last){ 
 return first + ' ' + last + ', ' + this.doctorSuffix; 
} 
 
var context = { 
 doctorSuffix: 'M.D.' 
}; 
 
titleize.call(context, 'Michaela', 'Quinn'); 
titleize.apply(context, ['Michaela', 'Quinn']);