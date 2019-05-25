=begin
Numerical Palindrome #4 by Vladislav Trotsenko.

A palindrome is a word, phrase, number, or other sequence of characters which reads
the same backward as forward. Examples of numerical palindromes are:

2332
110011
54322345

For a given number num, return its closest numerical palindrome which can either be
smaller or larger than num. If there are 2 possible values, the larger value should
be returned. If num is a numerical palindrome itself, return it.

For this kata, single digit numbers will NOT be considered numerical palindromes.

Also, you know the drill - be sure to return "Not valid" if the input is not an integer
or is less than 0.

palindrome(8) => 11
palindrome(281) => 282 
palindrome(1029) => 1001
palindrome(1221) => 1221
palindrome("1221") => "Not valid"
=end

#require 'benchmark'

class Integer
  def palindrome?
	to_s.size > 1 && to_s == to_s.reverse
  end
end

def palindrome(num)
  return 'Not valid' unless num.is_a?(Integer) && num.positive?
    unless num.palindrome?
      lesser, greater = nil, num
        (0...num).reverse_each { |i| lesser = i and break if i.palindrome?  }
  	    greater+=1 until greater.palindrome?
  	  num = case
  	    when lesser.to_s.size < 2 then greater
  	    else (num-greater).abs > (num-lesser).abs ? lesser : greater
  	  end
    end
  num
end

palindrome(281)

=begin
Benchmark test:
Benchmark.bmbm do |x|
  x.report('def palindrome') { palindrome(11029) }
end

Before refactoring code:
def palindrome(num)
  return 'Not valid' unless num.is_a?(Integer) && num.positive?
    unless num.palindrome?
      lesser = greater = num
  	    lesser-=1 until lesser.palindrome?
  	    greater+=1 until greater.palindrome?
  	  num = case
  	    when lesser.to_s.size < 2 then greater
  	    else (num-greater).abs > (num-lesser).abs ? lesser : greater
  	  end
    end
  num
end
=end