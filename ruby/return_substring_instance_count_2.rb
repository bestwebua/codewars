=begin
Return substring instance count - 2 by Vladislav Trotsenko.

Complete the solution so that it returns the number of times the search_text is
found within the full_text.

search_substr( fullText, searchText, allowOverlap = true )

so that overlapping solutions are (not) counted. If the searchText is empty,
it should return "0". Usage examples:

search_substr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
search_substr('aaabbbcccc', 'bbb') # should return 1
search_substr( 'aaa', 'aa' ) # should return 2
search_substr( 'aaa', '' ) # should return 0
search_substr( 'aaa', 'aa', false ) # should return 1
=end

def search_substr(fullText, searchText, allowOverlap=true)
  arr, result = fullText.chars, ''
    result = case allowOverlap
  	  when true && !searchText.empty? then
  	  	arr.each_with_index do |char, index|
          range = arr[index...index+searchText.size]
          index < arr.size-searchText.size ? result << range.join << ' ' : result << char; end
        result
      when false then fullText; end
  searchText.empty? ? 0 : result.scan(/#{searchText}/).size
end

search_substr('aaa', 'aa')

=begin
Super refactoring code:
def search_substr(fullText, searchText, allowOverlap=true)
  return 0 if searchText.empty?
    count, i = 0, 0
    while found = fullText[i..-1].index(searchText)
      i += found + (allowOverlap ? 1 : searchText.length)
      count += 1
    end
    count
end

Before refactoring code:
def search_substr(fullText, searchText, allowOverlap=true)
  arr, result = fullText.chars, ''
    if allowOverlap && !searchText.empty?
      arr.each_with_index do |char, index|
        range = arr[index...index+searchText.size]
          index < arr.size-searchText.size ? result << range.join << ' ' : result << char; end
      result.scan(/#{searchText}/).size
    elsif searchText.empty? then 0
    else fullText.scan(/#{searchText}/).size; end
end
=end