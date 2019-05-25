=begin
Gap in Primes by Vladislav Trotsenko.

The prime numbers are not regularly spaced. For example from 2 to 3
the gap is 1. From 3 to 5 the gap is 2. From 7 to 11 it is 4.
Between 2 and 50 we have the following pairs of 2-gaps primes: 3-5,
5-7, 11-13, 17-19, 29-31, 41-43

A prime gap of length n is a run of n-1 consecutive composite
numbers between two successive primes
(see: http://mathworld.wolfram.com/PrimeGaps.html).

We will write a function gap with parameters:
g (integer >= 2) which indicates the gap we are looking for
m (integer > 2) which gives the start of the search (m inclusive)
n (integer >= m) which gives the end of the search (n inclusive)

In the example above gap(2, 3, 50) will return [3, 5] or (3, 5)
or {3, 5} which is the first pair between 3 and 50 with a 2-gap.

So this function should return the first pair of two prime numbers
spaced with a gap of g between the limits m, n if these numbers
exist otherwise nil or null or None or Nothing (depending on the
language).

#Examples: gap(2, 5, 7) --> [5, 7] or (5, 7) or {5, 7}

gap(2, 5, 5) --> nil. In C++ {0, 0}. In F# [||]. In Kotlin return[]`
gap(4, 130, 200) --> [163, 167] or (163, 167) or {163, 167}

([193, 197] is also such a 4-gap primes between 130 and 200 but
it's not the first pair)

gap(6,100,110) --> nil or {0, 0} : between 100 and 110 we have 101,
103, 107, 109 but 101-107is not a 6-gap because there is 103 in
between and 103-109is not a 6-gap because there is 107in between.
=end
require 'prime'

def gap(g, m, n)
  Prime.each(n).select { |prime| prime.between?(m, n) }.each_cons(2).find { |a, b| b - a == g }
end

gap(6,100,110)

=begin
#version 6
require 'prime'
def gap(g, m, n)
  (m..n).each do |item|
    next unless item.prime?
      next_prime = item+g
    return [item, next_prime] if next_prime.prime? && (item+1...next_prime).none?(&:prime?); end
  nil
end

#version 5
require 'prime'
def gap(g, m, n)
  (m..n).select(&:prime?).each_cons(2).find { |a, b| b-a == g }
end

#version 4
require 'prime'
def gap(g, m, n)
  primes = (m..n).select(&:prime?)
    number = primes.find.with_index { |item, index| item+g == primes[index+1] }
  number.nil? ? nil : [number, number+g]
end

#version 3
require 'prime'
def gap(g, m, n)
  primes = (m..n).select(&:prime?)
    numbers = primes.select.with_index { |item, index| item+g == primes[index+1] }
  numbers.empty? ? nil : [numbers[0], numbers[0]+g]
end

#version 2
require 'prime'
def gap(g, m, n)
  numbers, primes = [], (m..n).select(&:prime?)
    primes.each_with_index do |item, index|
      numbers << item << primes[index+1] and break if item+g == primes[index+1]
    end
  numbers.empty? ? nil : [numbers[0], numbers[0]+g]
end

#version 1
def gap(g, m, n)
  primes = (m..n).select { |i| (2..i/2).none? { |n| i%n == 0 } }
    numbers = primes.select.with_index { |item, index| item+g == primes[index+1] }
  numbers.empty? ? nil : [numbers[0], numbers[0]+g]
end
=end