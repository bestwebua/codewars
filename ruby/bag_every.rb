=begin
class Array
  def every?
    self.each do |i|
      
    end
  end
end

arr = [1,2,3,4]
p arr.every? { |num| num > 0 }
=end