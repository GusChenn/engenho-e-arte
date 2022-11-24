#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

void bubble_sort (float array[], int quantity) {
  int i, j, temp;
  bool flag = false;

  for (i = 0; i <= quantity - 1; i++) {
    flag = false;
    for (j = 0; j < quantity - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        flag = true;
      }
    }
    if (!flag) {
      return;
    }
  }
}

float* generateRandomNumbers (int quantity, int multiplier, float array[]) {
  srand( (unsigned)time( NULL ) );
  for (int i = 0; i < quantity; i++) {
    array[i] = (float)rand()/(float)(RAND_MAX/multiplier);
  }
}

void printArray (float array[], int quantity) {
  for (int i = 0; i < quantity; i++) {
    printf("%f\n", array[i]);
  }
  return;
}

int main(int argc, char **argv) {
  struct timeval begin, end;
  int multiplier = 10;
  int quantity = atoi(argv[1]); 

  float randomNumbersArray[quantity];

  generateRandomNumbers(quantity, multiplier, randomNumbersArray);

  gettimeofday(&begin, 0);
  bubble_sort(randomNumbersArray, quantity);
  gettimeofday(&end, 0);

  long seconds = end.tv_sec - begin.tv_sec;
  long microseconds = end.tv_usec - begin.tv_usec;
  double elapsed = seconds + microseconds*1e-6;

  printf("Time measured: %.3f seconds.\n", elapsed);
}