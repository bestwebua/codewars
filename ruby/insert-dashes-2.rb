def insert_dash2(num)
  result, num = '', num.to_s.chars.map(&:to_i)
    num.each_with_index do |item, index|
	next_item, in_range = num[index+1], (index != num.size-1)
	  case
	    when in_range && item.odd? && next_item.odd? then result << "#{item}-"
	    when in_range && item.even? && next_item.even? && item>0 && next_item>0 then result << "#{item}*"
	    else result << "#{item}"; end; end
    result
end

p insert_dash2(40546793)

=begin
Super refactoring code:
def insert_dash2(num)
  num.to_s.gsub(/([2468])(?=[2468])/, '\1*').gsub(/([13579])(?=[13579])/, '\1-')
end

Before refactoring code:
def insert_dash2(num)
  result, num = '', num.to_s.chars.map(&:to_i)
  num.each_with_index do |item, index|
	next_item = num[index+1]
      index != num.size-1 && item.odd? && next_item.odd? ? result << "#{item}-" : index != num.size-1 && item.even? && next_item.even? && !item.zero? && !next_item.zero? ? result << "#{item}*" : result << "#{item}"; end
  result
end
=end