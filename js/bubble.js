const multiplier = 10;
const quantity = parseInt(process.argv[2]);
const timesToRepeat = 5;
const executionTimes = [];

const bubbleSort = array => {
  let flag = false;
  for(let i = 0; i <= array.length - 1; i++) {
    flag = false;
    for(let j = 0; j < ( array.length - i -1); j++) {
      if (array[j] > array[j+1]) {
        var temp = array[j]
        array[j] = array[j + 1]
        array[j+1] = temp
        flag = true;
      }
    }
    if(!flag) {
      return;
    }
  }
}

const meanCalc = array => array.reduce((partialSum, element) => partialSum + element, 0) / array.length;

const generateRandomNumbers = (quantity, multiplier) => {
  return Array(quantity).fill(Math.random() * multiplier);
};

// main

for (let i = 0; i < timesToRepeat; i++) {
  randomNumbersArray = generateRandomNumbers(quantity, multiplier);

  const start = performance.now();
  bubbleSort(randomNumbersArray);
  const end = performance.now();

  executionTimes.push(end - start);
}

const mean = meanCalc(executionTimes);

console.log(`Tempo de execução médio: ${((mean) / 1000).toFixed(3)} s`);

 