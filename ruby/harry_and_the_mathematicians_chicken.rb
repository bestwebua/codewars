=begin
Harry and the Mathematician's Chicken by Vladisalv Trotsenko.

Harry's local chicken shop - The Golden Chick - sells chicken pieces in boxes
of 3, 6 and 10.
Write a function that takes the total number of chicken pieces Harry can eat
(n) and returns an array of the possible numbers of chicken pieces he can buy,
that are less than or equal to n.

0 chicken pieces is a valid chicken option.

For example:
chicken_options(9) should return [0,3,6,9], as Harry can buy no boxes, a box
of 3, a box of 6, or a box of 3 and a box of 6 (9 in total).

For non-numeric input, the function should return [0].
=end

def chicken_options(n)
  n.is_a?(Integer) ? (0..n).select { |i| [3, 6, 10].any? { |a| (i%a).zero? } || [3, 6, 9].any? { |b| b == i%10 } } : [0]
end

chicken_options(13)


=begin
#Kata test cases
describe "Basic tests" do
  Test.assert_equals(chicken_options(13), [0, 3, 6, 9, 10, 12, 13])
  Test.assert_equals(chicken_options(2), [0])
  Test.assert_equals(chicken_options(21), [0, 3, 6, 9, 10, 12, 13, 15, 16, 18, 19, 20, 21])
end

def validator(n)
  n.is_a?(Integer) ? (0..n).select { |i| [3, 6, 10].any? { |a| (i%a).zero? } || [3, 6, 9].any? { |b| b == i%10 } } : [0]
end

base = ('a'..'z').to_a.join

describe "Random tests" do
  rand(1..10).times do
    number, string = rand(0..200), (0..rand(3..15)).map { base[rand(0..25)] }.join
      arg = [number, string].sample
      Test.it("Testing for #{arg}") do
        Test.assert_equals(chicken_options(arg), validator(arg))
      end
  end
end
=end