=begin
Get key/value pairs as arrays by Vladislav Trotsenko.

Complete the keysAndValues function so that it takes in an object and returns
the keys and values as separate arrays.

keysAndValues({a: 1, b: 2, c: 3}) # should return [[:a, :b, :c], [1, 2, 3]]
=end

def keysAndValues(data)
  [data.keys, data.values]
end

keysAndValues({a: 1, b: 2, c: 3})

=begin
def keysAndValues(data)
  data.to_a.transpose
end
=end