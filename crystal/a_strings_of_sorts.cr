# A String of Sorts
# https://www.codewars.com/kata/a-string-of-sorts/crystal

# Define a method that accepts 2 strings as parameters.
# The method returns the first string sorted by the second.

# sort_string('foos', 'of')
# # => 'oofs'

# sort_string('string', 'gnirts')
# # => 'gnirts'

# sort_string('banana', 'abn')
# # => 'aaabnn'

# To elaborate, the second string defines the ordering. It is possible
# that in the second string characters repeat, so you should remove
# repeating characters, leaving only the first occurrence.

# Any character in the first string that does not appear in the second
# string should be sorted to the end of the result in original order.

def sort_string(str, ordering)
  str.chars.sort_by { |item| ordering.index(item) || ordering.size }.join
end

def expectation(str, ordering)
  str.chars.sort_by { |item| ordering.index(item) || ordering.size }.join
end

def random_string
  string = (("a".."z").to_a.shuffle.zip(("a".."z").to_a).map(&.to_a).flatten.shuffle*5).shuffle.join
  string[rand(0..string.size)..-1]
end

describe :sort_string do
  describe "Basic tests" do
    it "sorts word when ordering contains all matching characters" do
      sort_string("banana", "abn").should eq("aaabnn")
    end

    it "does nothing when ordering contains no matching characters" do
      sort_string("banana", "xyz").should eq("banana")
    end

    it "sorts non-matching characters to the end of the new string" do
      sort_string("banana", "an").should eq("aaannb")
    end

    it "sorts correctly" do
      sort_string("foos", "of").should eq("oofs")
    end

    it "sorts correctly" do
      sort_string("string", "gnirts").should eq("gnirts")
    end

    it "sorts correctly" do
      sort_string("banana", "a").should eq("aaabnn")
    end

    it "removes repeating characters in ordering and sorts correctly" do
      sort_string("bungholio", "aacbuoldiiaoh").should eq("buoolihng")
    end
  end

  describe "Random tests" do
    rand(10..50).times do |test_index|
      it "random test #{test_index}" do
        random_args = {random_string, random_string}
        sort_string(*random_args).should eq(expectation(*random_args))
      end
    end
  end
end
