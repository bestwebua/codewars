=begin
Switch by Vladislav Trotsenko.

Write a function caseInSwitch which uses a switch statement to test the variable val
and sets the variable answer according to the following values of val: 1 - "alpha"
2 - "beta" 3 - "gamma" 4 - "delta"

Then, test caseInSwitch for the argument 1 and print the value of answer to the console.
=end

def caseInSwitch(n)
  %w(alpha beta gamma delta)[n.pred]
end