const multiplier = 10;
const quantity = parseInt(process.argv[2]);

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

const generateRandomNumbers = (quantity, multiplier) => {
  const unitaryArray = Array(quantity).fill(1);
  return unitaryArray.map(element => element * Math.random() * multiplier);
};

// main

randomNumbersArray = generateRandomNumbers(quantity, multiplier);

const start = performance.now();
bubbleSort(randomNumbersArray);
const end = performance.now();
console.log(`Tempo de execução: ${((end - start) / 1000).toFixed(3)} s`);
 