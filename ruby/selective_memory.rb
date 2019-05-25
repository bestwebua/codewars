=begin
Selective memory by Vladislav Trotsenko.

Description:
A mad sociopath scientist just came out with a brilliant invention!
He extracted his own memories to forget all the people he hates!
Now there's a lot of information in there, so he needs your talent 
as a developer to automatize that task for him.

You are given the memories as a string containing people's surname
and name (comma separated). The scientist marked one occurrence of
each of the people he hates by putting a '!' right before their name.

Your task is to destroy all the occurrences of the marked people.
One more thing ! Hate is contagious, so you also need to erase any
memory of the person that comes after any marked name!

Input:

"Albert Einstein, !Sarah Connor, Marilyn Monroe, Abraham Lincoln,
Sarah Connor, Sean Connery, Marilyn Monroe, Bjarne Stroustrup,
Manson Marilyn, Monroe Mary"

Output:
"Albert Einstein, Abraham Lincoln, Sean Connery, Bjarne Stroustrup,
Manson Marilyn, Monroe Mary"

=> We must remove every memories of Sarah Connor because she's marked, 
but as a side-effect we must also remove all the memories about Marilyn
Monroe that comes right after her! Note that we can't destroy the
memories of Manson Marilyn or Monroe Mary, so be careful!
=end

def select(memory)
  names_for_reject, memory = [], memory.split(', ')
    memory.each_with_index do |item, index|
      memory[index..index+1].each { |i| names_for_reject << i } if item[/\!/]
    end
  memory.reject { |item| names_for_reject.any? { |dict_item| dict_item.include?(item) } }.join(', ')
end

select('Jesse Cox, !Selena Gomez')