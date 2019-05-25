=begin
List to Array by Vladislav Trotsenko.

Lists are data structures composed of nested objects,
each containing a single value and a reference to the next object.

For instance:
{'value'=>1, 'next'=>{'value'=>2, 'next'=>{'value'=>3, 'next'=>nil}}}
will return [1, 2, 3]
=end

def list_to_array(list)
  arr = []
	while list
	  arr << list['value']
	  list = list['next']
	end
  arr
end

list_to_array({'value'=>1, 'next'=>{'value'=>2, 'next'=>{'value'=>3, 'next'=>nil}}})