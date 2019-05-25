=begin
Find Added by Vladislav Trotsenko.

Description:
You are given two strings (st1, st2) as inputs. Your task is to return a string containing the
numbers in st2 which are not in str1. Make sure the numbers are returned in ascending order.
All inputs will be a string of numbers.

Here are some examples:
findAdded('4455446', '447555446666'); // '56667'
findAdded('44554466', '447554466'); // '7'
findAdded('9876521', '9876543211'); // '134'
findAdded('678', '876'); // ''
findAdded('678', '6'); // ''
=end


def findAdded(st1, st2)
  stack = []
  ('0'..'9').to_a.each do |i|
    (st2.count(i) - st1.count(i)).times do stack << i; end if st1.count(i) != st2.count(i)
   end
  stack.join
end


findAdded('307730233025838', '6758572847600887807')


=begin
Before refactoring code 2:
def findAdded(st1, st2)
  st1, st2, stack, index_shift = st1.chars.sort, st2.chars.sort, [], 0
    st2.each.with_index do |item, index|
      if item == st1[index_shift]
      	puts "index: #{index}, index_shift: #{index_shift}"
      	index_shift+=1
      else
      	puts "index: #{index}, index_shift: #{index_shift}"
      	stack << item
      	index_shift=index if index.zero?
      end
    end
  stack.sort.join
end

Before refactoring code 1:
def findAdded(st1, st2)
  st1, st2, stack = st1.chars, st2.chars, []
    times = st1.size
	  loop do
	    if st1[0] == st2[0]
	      st1.shift and st2.shift
	      times-=1
	    else
	      stack << st2.shift
	      times+=1
	    end
	  break if times == 0; end
  stack.sort.join
end

require 'benchmark'
Benchmark.bmbm do |x|
  x.report("findAdded with loop") { findAdded('4455446', '447555446666') }
end
=end