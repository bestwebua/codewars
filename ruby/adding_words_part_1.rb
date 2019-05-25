=begin
Adding words - Part I by Vladislav Trotsenko.

//c++
Arith* k = new Arith("three");
k->add("seven"); //this should return string "ten"
=end

class Arith
  def initialize(number)
    @number = number
  end

  def add(arg)
    dict = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty).each_with_index.to_h
    dict.key(dict[@number]+dict[arg])
  end
end

i = Arith.new('three')
i.add('eight')