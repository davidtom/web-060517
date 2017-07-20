function loopingAndCallbacks() {
  // Problem: Calculate the sum of the `nums`
  const nums = [1,2,3,4,5,6,7,8,9];

  // Using `for` loop
  let total = 0;
  for (let i = 0; i < nums.length; i++) {
    total += nums[i];
  }
  console.log('Using for loop', total);

  // Using `for...in` loop
  total = 0;
  for (let i in nums) {
    total += nums[i];
  }
  console.log('Using for...in loop', total);

  // Creating our own `forEach` function
  // Pass in the array `arr` we want to loop over
  // and a function definition `callback` that we want
  // to call each time the loop happens.
  function forEach(arr, callback) {
    for (let i = 0; i < arr.length; i++) {
      const element = arr[i];
      callback(element);
    }
  }

  // Using our own `forEach`
  total = 0;
  function addToTotal(num) { total += num }
  forEach(nums, addToTotal)
  console.log('Using our own forEach fn', total);

  // Using `Array.prototype.forEach` builtin
  total = 0;
  function addToTotal(num) { total += num }
  nums.forEach(addToTotal)
  console.log('Using Array.prototype.forEach', total);
}
