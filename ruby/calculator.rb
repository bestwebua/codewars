=begin
Calculator by Vladislav Trotsenko.

=end


class Calculator
  def evaluate(string)
    operations = /\+|\-|\*|\/|\(|\)/
      abort "I can't process your string." unless /\A(\d+|#{operations}| )+\z/.match(string)
        string.scan(/\d+|#{operations}/).map { |char| /\d/.match(char) ? char.to_i : char }
  end
end


p Calculator.new.evaluate('-20/2+300*(4-60)')

=begin
  data, stack, operators = [], '', /\/|\*|\+|\-|\(|\)/
      string.each_char.with_index do |char, index|
        case char
          when /\d/ then stack << char
          when /#{operators}/
            data << stack.to_f and stack.clear
          data << char unless index == string.size-1
        end
        data << stack.to_f if index == string.size-1 && !stack.empty?
      end

    p data
=end