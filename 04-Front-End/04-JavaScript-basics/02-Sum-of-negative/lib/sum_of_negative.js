const sumOfNegative = (numbers) => {
  // TODO: You are getting a `numbers` array. Return the sum of **negative** numbers only.
  let total = 0;
  numbers.forEach((number) => {
    if (Math.sign(number) === -1) {
      total += number;
    }
  });
  return total;
};

console.log(sumOfNegative([-4, 5, -2, 9]));

module.exports = sumOfNegative; // Do not remove.
