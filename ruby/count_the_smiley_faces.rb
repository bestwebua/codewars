=begin
Count the smiley faces! by Vladislav Trotsenko.

Given an array (arr) as an argument complete the function countSmileys that should return the
total number of smiling faces.

Rules for a smiling face:
-Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
-A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
-Every smiling face must have a smiling mouth that should be marked with either ) or D.

Valid smiley face examples:
:) :D ;-D :~)

Invalid smiley faces:
;( :> :} :]
=end

class String
	def smile_is_true?
		dict = [[':',';'], ['-','~'], [')','D']]
			status = self.size.between?(2,3) ? true : false
				  self.chars.each_with_index do |item, index|
				  	break if status == false
					    status = case
						    when index.zero? && dict[0].include?(item) then true
						    when index == 1 && dict[index+1].include?(item) && self.size == 2 then true
						    when dict[1].include?(item) && self.size == 3 then true
						    when dict[2].include?(item) && self.size == 3 then true
						    else false
					    end
				  end
			status
	end
end

def count_smileys(arr)
	arr.count(&:smile_is_true?)
end

count_smileys([":))",";-D"])

=begin
#Super refactoring code:
	def count_smileys(arr)
	  arr.grep(/[:;][-~]?[)D]/)
	end
=end