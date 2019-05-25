=begin
Insert dashes by Vladislav Trotsenko.

Write a function insertDash(num) that will insert dashes ('-') between each two odd numbers in num.
For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number.
=end

def insert_dash(num)
  result = ''
  num = num.to_s.chars.map(&:to_i)
    num.each_with_index do |item, index|
      next_item = num[index+1]
      index != num.size-1 && item.odd? && next_item.odd? ? result << "#{item}-" : result << "#{item}"
  	end
  result
end

insert_dash(13579)

=begin
Super refactoring code:
def insert_dash(num)
  num.to_s.gsub(/(?<=[13579])([13579])/, '-\1')
end

Before refactoring:
def insert_dash(num)
  result = ''
  	num = num.to_s.chars.map(&:to_i)
      num.each_with_index do |item, index|
        next_item = num[index+1]
          index != num.size-1 && item.odd? && next_item.odd? ?
      result << item.to_s << '-' : result << item.to_s; end
    result
end
=end