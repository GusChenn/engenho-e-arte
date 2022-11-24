import sys
import time
from random import randint

multiplier = 10
quantity = int(sys.argv[1])
timesToRepeat = 5
executionTimes = []

def bubbleSort(array):
  flag = False
  for i in range(len(array) - 1):
    flag = False
    for j in range(len(array) - i - 1):
      if array[j] > array[j+1]:
        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
        flag = True
    if not flag:
      return

def generateRandomNumbers(quantity, multiplier):
  return [randint(0,multiplier) for i in range(quantity)]

def meanCalc(array):
  sum = 0
  for element in array:
    sum += element
  return sum / len(array)

for i in range(timesToRepeat):
  randomNumbersAarray = generateRandomNumbers(quantity, multiplier)

  initial_time = time.time()
  bubbleSort(randomNumbersAarray)
  final_time = time.time()

  executionTimes.append(final_time - initial_time)

mean = meanCalc(executionTimes)
print('Tempo de execução médio: {}s'.format(mean))