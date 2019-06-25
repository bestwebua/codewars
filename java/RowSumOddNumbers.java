// Sum of odd numbers
// https://www.codewars.com/kata/sum-of-odd-numbers/java

// Given the triangle of consecutive odd numbers:
//              1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...

// Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

// rowSumOddNumbers(1); // 1
// rowSumOddNumbers(2); // 3 + 5 = 8

class RowSumOddNumbers {
  public static int rowSumOddNumbers(int n) {
    return (int)Math.pow(n, 3);
  }
}
