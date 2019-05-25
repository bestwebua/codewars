=begin
Alphabet Wars - Nuclear Strike by Vladislav Trotsenko.
My Ruby translation.

There is a war and nobody knows - the alphabet war! The letters hide in their nuclear shelters.
The nuclear strikes hit the battlefield and killed a lot of them.

Write a function that accepts battlefield string and returns letters that survived the nuclear strike.

The battlefield string consists of only small letters, #,[ and ].
The nuclear shelter is represented by square brackets []. The letters inside the square brackets represent
letters inside the shelter.

The # means a place where nuclear strike hit the battlefield. If there is at least one # on the battlefield,
all letters outside of shelter die. When there is no any # on the battlefield, all letters survive (but do
not expect such scenario too often ;-P ).

The shelters have some durability. When 2 or more # hit close to the shelter, the shelter is destroyed and
all letters inside evaporate. The 'close to the shelter' means on the ground between the shelter and the
next shelter (or beginning/end of battlefield). The below samples make it clear for you.

Examples:
abde[fgh]ijk     => "abdefghijk"  (all letters survive because there is no # )
ab#de[fgh]ijk    => "fgh" (all letters outside die because there is a # )
ab#de[fgh]ij#k   => ""  (all letters dies, there are 2 # close to the shellter )
##abde[fgh]ijk   => ""  (all letters dies, there are 2 # close to the shellter )
##abde[fgh]ijk[mn]op => "mn" (letters from the second shelter survive, there is no # close)
#abde[fgh]i#jk[mn]op => "mn" (letters from the second shelter survive, there is only 1 # close)
=end

def alphabetWar(battlefield)
  nuclear_strike, shelter_first, shelter_last, nuclear_wave, result = '#', '[', ']', '', []
    unless battlefield.include?(nuclear_strike)
      result = battlefield.tr('[]','')
    else
      battlefield.each_char.with_index do |char, index|
        case char
          when shelter_first
            result << nuclear_wave and nuclear_wave = '' unless nuclear_wave.empty?
              in_shelter, last_index = [], index
              in_shelter = battlefield[index..last_index] and last_index+=1 until in_shelter[-1] == shelter_last
            result << in_shelter[1...-1]
          when nuclear_strike then nuclear_wave << char
        end
        result << nuclear_wave and nuclear_wave = '' if index == battlefield.size-1 && !nuclear_wave.empty?
      end

      result.select!.with_index do |item, index|
        next_item, prev_item = result[index+1], result[index-1]
            case index
              when 0
                !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2
              when result.size-1
                !item.include?(nuclear_strike) && prev_item.count(nuclear_strike) < 2
              else
                (!prev_item.include?(nuclear_strike) && !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2) ||
                (prev_item.count(nuclear_strike) < 2 && !item.include?(nuclear_strike) && !next_item.include?(nuclear_strike))
            end
      end

    result = result.join
    end
  result
end

alphabetWar('[ab]adfd[dd]##[abe]dedf[ijk]d#d[h]#')

=begin
#Before refactoring code:
def alphabetWar(battlefield)
  nuclear_strike, shelter_first, shelter_last, nuclear_wave, result, stack = '#', '[', ']', '', [], []
    unless battlefield.include?(nuclear_strike)
      result = battlefield.tr('[]','')
    else
      battlefield.each_char.with_index do |char, index|
        case char
          when shelter_first
            in_shelter, last_index = [], index
              in_shelter = battlefield[index..last_index] and last_index+=1 until in_shelter[-1] == shelter_last
            result << in_shelter[1...-1]
          when nuclear_strike then result << char
        end
      end

      result.each_with_index do |item, index|
        if item == nuclear_strike
          nuclear_wave << item
          stack << nuclear_wave if index == result.size-1
        else
          stack << nuclear_wave unless nuclear_wave.empty?
            nuclear_wave = ''
          stack << item
        end
      end
      result = stack

      result.select!.with_index do |item, index|
        next_item, prev_item = result[index+1], result[index-1]
            case index
              when 0
                !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2
              when result.size-1
                !item.include?(nuclear_strike) && prev_item.count(nuclear_strike) < 2
              else
                (!prev_item.include?(nuclear_strike) && !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2) ||
                (prev_item.count(nuclear_strike) < 2 && !item.include?(nuclear_strike) && !next_item.include?(nuclear_strike))
            end
      end

    result = result.join
    end
  result
end

#old solution
def alphabetWar(battlefield)
  nuclear_strike, shelter_first, shelter_last, nuclear_wave, result = '#', '[', ']', '', []
    unless battlefield.include?(nuclear_strike)
      result = battlefield.tr('[]','')
    else
      battlefield.each_char.with_index do |char, index|
        result << nuclear_wave and nuclear_wave = '' unless nuclear_wave.empty? if not char == nuclear_strike
          case char
            when shelter_first
              in_shelter, last_index = [], index
                in_shelter = battlefield[index..last_index] and last_index+=1 until in_shelter[-1] == shelter_last
              result << in_shelter[1...-1]
            when nuclear_strike
              nuclear_wave << char
              result << nuclear_wave if index == battlefield.size-1
          end
      end

      result.select!.with_index do |item, index|
        next_item, prev_item = result[index+1], result[index-1]
            case index
              when 0
                !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2
              when result.size-1
                !item.include?(nuclear_strike) && prev_item.count(nuclear_strike) < 2
              else
                (!prev_item.include?(nuclear_strike) && !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2) ||
                (prev_item.count(nuclear_strike) < 2 && !item.include?(nuclear_strike) && !next_item.include?(nuclear_strike))
            end
      end

    result = result.join
    end
  result
end

###Codewars test case###
describe "Basic tests" do
  Test.assert_equals(alphabetWar('abde[fgh]ijk'), 'abdefghijk')
  Test.assert_equals(alphabetWar('ab#de[fgh]ijk'), 'fgh')
  Test.assert_equals(alphabetWar('ab#de[fgh]ij#k'), '')
  Test.assert_equals(alphabetWar('##abde[fgh]ijk'), '')
  Test.assert_equals(alphabetWar('##abde[fgh]ijk[mn]op'), 'mn')
  Test.assert_equals(alphabetWar('#abde[fgh]i#jk[mn]op'), 'mn')
  Test.assert_equals(alphabetWar('[ab]adfd[dd]##[abe]dedf[ijk]d#d[h]#'), 'abijk')
end

def randint(a, b)
  rand(b-a+1)+a
end

def validator(battlefield)
  nuclear_strike, shelter_first, shelter_last, nuclear_wave, result = '#', '[', ']', '', []
    unless battlefield.include?(nuclear_strike)
      result = battlefield.tr('[]','')
    else
      battlefield.each_char.with_index do |char, index|
        case char
          when shelter_first
            in_shelter, last_index = [], index
              in_shelter = battlefield[index..last_index] and last_index+=1 until in_shelter[-1] == shelter_last
              result << nuclear_wave and nuclear_wave = '' unless nuclear_wave.empty?
            result << in_shelter[1...-1]
          when nuclear_strike
            nuclear_wave << char
            result << nuclear_wave if index == battlefield.size-1
          else
            result << nuclear_wave and nuclear_wave = '' unless nuclear_wave.empty?
        end
      end

      result.select!.with_index do |item, index|
        next_item, prev_item = result[index+1], result[index-1]
            case index
              when 0
                !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2
              when result.size-1
                !item.include?(nuclear_strike) && prev_item.count(nuclear_strike) < 2
              else
                (!prev_item.include?(nuclear_strike) && !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2) ||
                (prev_item.count(nuclear_strike) < 2 && !item.include?(nuclear_strike) && !next_item.include?(nuclear_strike))
            end
      end

    result = result.join
    end
  result
end

base = 'abcdefghijklmnopqrstuvwxyz'

describe "Random tests" do
  rand(5..10).times do
    nuclear_blast = Array.new(rand(0..4)) { |i| base[randint(0, base.size-1)]+'#'*rand(1..2)+base[randint(0, base.size-1)] }
      nuclear_corps = Array.new(rand(2..6)) { |i| (0..randint(1, 4)).map { (0..randint(3, 5)).map { base[randint(0, base.size-1)] }.join }.join }
        shelters = Array.new(rand(0..5)) { |i| '[' + (0..randint(1, 2)).map { (0..randint(1, 2)).map { base[randint(0, base.size-1)] }.join }.join + ']' }
          battlefield = [nuclear_blast, nuclear_corps, shelters].flatten.shuffle.join
        Test.it("Testing for #{battlefield}") do
      Test.assert_equals(alphabetWar(battlefield), validator(battlefield))
    end
  end
end
=end