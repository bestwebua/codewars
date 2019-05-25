=begin
Move Zeroes by Vladislav Trotsenko.

Given the numerical series as argument. Write a function to move all zeros to the end of
it while maintaining the relative order of the non-zero elements from smaller to bigger.

For instance:
Given numbers (0, 3, 0, 1, 9, 6). Your function should return an array
of numbers: [1, 3, 6, 9, 0, 0].

Note: You must do this in-place without making a copy of the array.
Don't use .sort & .sort! methods.
=end

def move_zeroes(*nums)
    size = nums.size
    count = 0
#Bubble sort loop
  loop do swap = false
      (size-1).times do |i|
        if nums[i] > nums[i+1]
            nums[i], nums[i+1] = nums[i+1], nums[i]
            swap = true
         end
      end
    break if not swap
  end
#WithoutZeros sort loop
    size.times do |i|
      if nums[i] != 0
            nums[count] = nums[i]
            count += 1
        end
    end
#FillWithZeroes loop
    while count < size
        nums[count] = 0
        count += 1
    end

  nums

end

move_zeroes(0, 3, 0, 1, 9, 6)

=begin
Super refactoring code:
def move_zeroes(*nums)
  (1...nums.length).each {|j|
    while j > 0 && (nums[j - 1] == 0 || nums[j] != 0 && nums[j - 1] > nums[j])
      nums[j - 1], nums[j] = nums[j], nums[j - 1]
      j -= 1
    end
  }
  nums
end
Old code before refactoring 1:
def move_zeroes(*nums)
  nums = nums.sort!
  nums.each do |i|
    if i == 0
      nums.shift
      nums.push i
    end
  end
end

Old code before refactoring 2:
def move_zeroes(*nums)
nums = nums.select { |x| x!=0 }.sort + nums.select { |x| x==0 }
end

Old code before refactoring 3:
def move_zeroes(*nums) i=0; nums.select{|a| i+=1 if a==0; a!=0}.sort+[0]*i end
def move_zeroes(*nums) nums.select{|a| a!=0}.sort+[0]*nums.count(0) end

#Bubble sort loop for numerical series with while
  swap = true
  while swap
    swap = false
      (size-1).times do |i|
        swap |= nums[i] > nums[i+1] 
        nums[i], nums[i+1] = nums[i+1], nums[i] if nums[i] > nums[i+1]
      end
  end
=end