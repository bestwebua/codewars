=begin
What The Biggest Search Keys? by Vladislav Trotsenko.

You are a progammer in seo company. Everyday seo specialist from your company getting the list of
all keywords by project. Then he search the biggest keys to analyze it. You need to write simple
method that help to find the biggest search keywords and sort it in lexicographical order.

For instance you can get:
'key1', 'key2', 'key3', 'key n', 'bigkey2', 'bigkey1'

You will return:
"'bigkey1', 'bigkey2'"
=end

def the_biggest_search_keys(*keys)
  keys.group_by(&:size).max.last.sort.map { |i| "'#{i}'" }.join(', ')
end

the_biggest_search_keys('small keyword', 'how to coding?', 'very nice kata', 'a lot of keys', 'I like Ruby!!!')

=begin
Before refactoring code:
def the_biggest_search_keys(*keys)
  keys.select { |key| key.size == keys.map(&:size).max }.sort.map { |i| "'#{i}'" }.join(', ')
end

def the_biggest_search_keys(*keys)
  keys.select { |key| key.size == keys.inject { |memo, key| memo.size>key.size ? memo : key }.size }.sort.map { |i| "'" << i << "'" }.join(', ')
end

Ugly code :) Hohoho.
def the_biggest_search_keys (*keys)
  m, r = 0, []
    keys.each do |k|
  	  if k.size >= m
  	    r.clear and m = k.size if k.size > m
  	  r << k; end
    end
  "'"+r.sort().join("', '")+"'"
end

Test cases:
describe "Basic tests" do
  Test.assert_equals(the_biggest_search_keys('key1', 'key22', 'key333'), "'key333'")
  Test.assert_equals(the_biggest_search_keys('coding', 'sorting', 'tryruby'), "'sorting', 'tryruby'")
  Test.assert_equals(the_biggest_search_keys('small keyword', 'how to coding?', 'very nice kata', 'a lot of keys', 'I like Ruby!!!'), "'I like Ruby!!!', 'how to coding?', 'very nice kata'")
end

describe "Random tests" do
  Test.random_number.times do
    first, second, third = Test.random_token, Test.random_token, Test.random_token
      keys = [first, second, third]
        result = keys.select { |key| key.size == keys.map(&:size).max }.sort.map { |i| "'#{i}'" }.join(', ')
    Test.assert_equals(the_biggest_search_keys(first, second, third), result)
  end
end
=end