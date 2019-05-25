=begin
The Hashtag Generator by Vladislav Trotsenko.

The marketing team are spending way too much time typing in hashtags.
Let's help them with out own Hashtag Generator!

Here's the deal:

    If the final result is longer than 140 chars it must return false.
    If the input is a empty string it must return false.
    It must start with a hashtag (#).
    All words must have their first letter capitalized.

Example Input to Output:
"Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"
"Hello World" => "#HelloWorld"
=end


def generateHashtag(str)
	str.size.between?(1, 140) ? '#' << str.split.map(&:capitalize).join : false
end

generateHashtag('cool ruby hash tag function')

=begin
Super refactoring code:
def generateHashtag(str)
  "##{str.split.map(&:capitalize).join}"[/#.{2,139}$/] or false
end
=end