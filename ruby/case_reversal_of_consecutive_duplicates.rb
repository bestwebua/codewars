=begin
Case Reversal of Consecutive Duplicates by Vladislav Trotsenko.

The aim of this Kata is to write a function which will reverse the case of all consecutive
duplicate letters in a string. That is, any letters that occur one after the other and are identical.

If the duplicate letters are lowercase then they must be set to uppercase, and if they are uppercase
then they need to be changed to lowercase. 
=end

def reverse(str)
  str.gsub(/(.)\1+/, &:swapcase)
end

reverse('aabcaaa')


=begin
#Before refactoring 2:
def reverse(str)
	result, stack, step, str = [], [], 0, str.chars
  	str.each do |item|
  		stack << item if stack.empty? || stack.include?(item)
  		result << stack.clone and stack.clear and stack << item unless stack.include?(item)
  		result << stack.clone if step == str.size-1
  	step+=1; end
  result.map { |i| i.size > 1 ? i.map(&:swapcase) : i }.join
end

#Before refactoring 1:
def reverse(str)
	result, stack, step, str = [], [], 0, str.chars
  	str.each do |item|
  		stack << item if stack.empty? || stack.include?(item)
  			unless stack.include?(item)
	  			result << stack.clone and stack.clear
	  			stack << item
  			end
  		result << stack.clone if step == str.size-1
  		step+=1
  	end
  result.map { |i| i.size > 1 ? i.map(&:swapcase) : i }.join
end
=end