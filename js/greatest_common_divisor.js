// Greatest common divisor, 7 kyu
// https://www.codewars.com/kata/greatest-common-divisor

function mygcd(x,y){
  return y == 0 ? x : mygcd(y, x % y)
}
