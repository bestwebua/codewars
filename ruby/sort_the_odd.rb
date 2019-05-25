=begin
Sort the odd by Vladislav Trotsenko.

You have an array of numbers. Your task is to sort ascending
odd numbers but even numbers must be on their places.

Zero isn't an odd number and you don't need to move it. If you
have an empty array, you need to return it.

Example:
sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
=end

def sort_array(source_array)
  odds = source_array.select(&:odd?).sort.each
  source_array.map { |item| item.odd? ? odds.next : item }
end

sort_array([5, 3, 2, 8, 1, 4])


=begin
def sort_array(source_array)
  odds = source_array.select(&:odd?).sort
  source_array.map { |item| item.odd? ? odds.shift : item }
end

def sort_array(source_array)
  data = source_array.map.with_index { |item, index| [index, item] if item.odd? }.compact.to_h
    indexes, odds = data.keys, data.values.sort
    indexes.each_with_index { |target_index, item| source_array[target_index] = odds[item] }
  source_array
end
=end