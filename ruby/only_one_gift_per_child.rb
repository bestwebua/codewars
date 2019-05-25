=begin
Only One Gift Per Child by Vladislav Trotsenko.

Santa is handing out gifts in the kindergarten. Many toddlers are around there and
everyone should have the opportunity to have a seat on Santa's lap. But there's Peter,
a 5 year old boy, who is a bit naughty. He tries to get two gifts. After he got the
first one, he lines up again in the queue of children.

But fortunately Santa is not alone. His elves keep a list with the names of the children,
which already were on Santa's lap. We know, that each child name is unique. If a child
tries to get a second gift, the elves will tell Santa.
=end

def hand_out_gift(name)
  @names ||= []
    raise 'Fuck you, kid!' if @names.include?(name)
  @names << name
end