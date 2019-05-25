=begin
Luck check by Vladislav Trotsenko.

In some countries of former Soviet Union there was a belief about lucky tickets.
A transport ticket of any sort was believed to posess luck if sum of digits on the
left half of its number was equal to the sum of digits on the right half. Here are
examples of such numbers:

003111    # 3 = 1 + 1 + 1
813372    # 8 + 1 + 3 = 3 + 7 + 2
17935     # 1 + 7 = 3 + 5
56328116  # 5 + 6 + 3 + 2 = 8 + 1 + 1 + 6

Such tickets were either eaten after being used or collected for bragging rights.

Your task is to write a funtion luck_check(str), which returns true/True if argument is string
decimal representation of a lucky ticket number, or false/False for all other numbers.
It should throw errors for empty strings or strings which don't represent a decimal number.
=end

def luck_check (str)
  abort if str[/\D/] || str.empty?
    nums = str.chars.map(&:to_i)
  nums.first(nums.size/2).inject(:+) == nums.last(nums.size/2).inject(:+) && nums.size.even?
end

luck_check('11')

=begin
Before refactoring versions:

def luck_check (str)
  abort if str[/\D/] || str.empty?
    nums = str.chars.map(&:to_i)
  nums.first(nums.size/2).inject(:+) == nums.last(nums.size/2).inject(:+) && nums.size.even?
end

def luck_check(str)
  unless /\D/.match(str) || str.empty?
    nums = str.chars.map(&:to_i)
    nums.first(nums.size/2).inject(:+) == nums.last(nums.size/2).inject(:+)
  else abort; end
end

def luck_check(str)
  unless /\D/.match(str)
    nums = str.chars.map(&:to_i)
      nums.delete_at(nums.size/2) if nums.size.odd?
    nums[0...nums.size/2].inject(:+) == nums[nums.size/2..-1].inject(:+)
  else abort; end
end

def luck_check(str)
  unless /\D/.match(str)
    nums = str.chars.map(&:to_i)
      nums.delete_at(nums.size/2) if nums.size.odd?
    nums[0...nums.size/2].inject(:+) == nums[nums.size/2..-1].inject(:+)
  else 'Error'; end
end

def luck_check(str)
  unless /\D/.match(str)
    nums = str.chars.map(&:to_i)
      nums.delete_at(nums.size/2) if nums.size.odd?
    nums[0...nums.size/2].inject(:+) == nums[nums.size/2..-1].inject(:+)
  else false; end
end

def luck_check(str)
  nums = str.chars.map(&:to_i)
    nums.delete_at(nums.size/2) if nums.size.odd?
      nums[0...nums.size/2].inject(:+) == nums[nums.size/2..-1].inject(:+)
  rescue false
end
=end