=begin
Calculate Individual Ages by Vladislav Trotsenko.

Create a function that takes in the sum and age difference of two people, calculates their individual 
ages and returns the result as an array of the following format: [olderAge, youngerAge].

Return nil if:
sum < 0
difference < 0
either of the calculated ages come out to be negative
=end

class Float
  def is_whole?
    to_i == self ? to_i : self
  end
end

def getAges(sum, diff)
  return nil if sum.negative? || diff.negative?
  [(sum-diff)/2.0, (sum+diff)/2.0].map(&:is_whole?).sort.reverse
end


getAges(33, 10)


=begin
def getAges(sum, diff)
  return nil if sum.negative? || diff.negative?
	age1 = (sum-diff)/2.0
	age2 = sum-age1
 [age1, age2].map(&:is_whole?).sort.reverse
end
=end