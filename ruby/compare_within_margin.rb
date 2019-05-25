=begin
Compare within margin by Vladislav Trotsenko.

Create a function close_compare that compares two numbers a and b.

When a is lower than b, return -1.
When a is higher than b, return 1.
However when a and b are the same or close within margin, return 0.
Margin may not always be given.

Example: if a = 3, b = 5 and the margin is 3, since a and b are no more
than 3 apart, close_compare should return 0. Otherwise, if margin is 0,
a is less than b and close_compare should return -1.

Assume: margin >= 0
=end

def close_compare(a, b, margin=0)
  margin<(a-b).abs || margin==0 ? a<=>b : 0
end

close_compare(1.99, 5, 3)


=begin
Super refactoring code:
def close_compare(a, b, margin=0)
	(a-b).abs <= margin ? 0 : a <=> b
end

My first version:
def close_compare(a, b, margin=nil)
	margin<(a-b).abs || margin.nil? ? a<=>b : 0
end
=end