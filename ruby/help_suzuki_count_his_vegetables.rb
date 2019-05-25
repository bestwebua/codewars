=begin
Help Suzuki count his vegetables by Vladislav Trotsenko.

Suzuki is the master monk of his monastery so it is up to him to ensure the kitchen
is operating at full capacity to feed his students and the villagers that come for
lunch on a daily basis.

This week there was a problem with his deliveries and all the vegetables became mixed up.
There are two important aspects of cooking in his kitchen, it must be done in harmony
and nothing can be wasted. Since the monks are a record keeping people the first order
of business is to sort the mixed up vegetables and then count them to ensure there is
enough to feed all the students and villagers.

You will be given a string with the following vegetables:
"cabbage", "carrot", "celery", "cucumber", "mushroom", "onion", "pepper", "potato",
"tofu", "turnip"

Return a list of tuples with the count of each vegetable in descending order. If there
are any non vegetables mixed in discard them. If the count of two vegetables is the
same sort in reverse alphabetical order (Z->A).

(119, "pepper"),
(114, "carrot"),
(113, "turnip"),
(102, "onion"),
(101, "tofu"),
(100, "cabbage"),
(93, "mushroom"),
(90, "cucumber"),
(88, "potato"),
(80, "celery")
=end

def count_vegetables(s)
  vegs = Hash.new(0)
    s.split.each { |i| vegs[i]+=1 unless i == 'chopsticks' }
  vegs.sort_by { |k, v| [v, k] }.map(&:reverse).reverse
end

count_vegetables('potato tofu cucumber cabbage turnip pepper onion carrot celery mushroom potato tofu cucumber cabbage')


=begin
Super refactoring code 1:
def count_vegetables(s)
  vegs = %w(cabbage carrot celery cucumber mushroom onion pepper potato tofu turnip)
  s.split.each_with_object(Hash.new 0){|s,y|y[s] += 1 if vegs.include? s}.map(&:reverse).sort.reverse
end

Super refactoring code 2:
def count_vegetables(s)
  s.split.reject { |item| item == 'chopsticks' }.group_by { |veg| veg }.map { |veg,list| [list.size,veg] }.sort.reverse
end
=end