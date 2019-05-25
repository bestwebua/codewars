=begin
Custom Array Filters by Vladislav Trotsenko.

Dave has a lot of data he is required to apply filters to, which are simple enough,
but he wants a shorter way of doing so. He wants the following functions to work as expected:

even      # [1,2,3,4,5].even should return [2,4]
odd       # [1,2,3,4,5].odd should return [1,3,5]
under     # [1,2,3,4,5].under(4) should return [1,2,3]
over      # [1,2,3,4,5].over(4) should return [5]
in_range  # [1,2,3,4,5].in_range(1..3) should return [1,2,3]
=end

class Array
  def integers(&proc)
    select { |i| i.is_a?(Integer) }.select &proc  #conversion of proc into block
  end
  def even
    integers(&:even?)
  end
  def odd
    integers(&:odd?)
  end
  def under(arg)
    integers { |i| i < arg }
  end
  def over(arg)
    integers { |i| i > arg }
  end
  def in_range(range)
    integers { |i| range.include?(i) }
  end
end

[1,2,3,4,5,'a','b'].even


=begin
#Before refactoring code 2:
class Array
  def integers
    select { |i| i.is_a?(Integer) }
  end
  def even
    integers.select(&:even?)
  end
  def odd
    integers.select(&:odd?)
  end
  def under(arg)
    integers.select { |i| i < arg }
  end
  def over(arg)
    integers.select { |i| i > arg }
  end
  def in_range(arg)
    integers.select { |i| arg.include?(i) }
  end
end

#Before refactoring code 1:
class Array
  def even
    select { |i| i.is_a?(Integer) && i.even? }
  end

  def odd
    select { |i| i.is_a?(Integer) && i.odd? }
  end

  def under(arg)
    select { |i| i.is_a?(Integer) && i < arg }
  end

  def over(arg)
    select { |i| i.is_a?(Integer) &&  i > arg }
  end

  def in_range(arg)
    select { |i| i.is_a?(Integer) && arg.include?(i) }
  end
end
=end