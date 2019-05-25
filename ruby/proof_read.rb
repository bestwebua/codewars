=begin
Proof Read by Vladislav Trotsenko.

You've just finished writing the last chapter for your novel when a virus suddenly infects your
document. It has swapped the 'i's and 'e's in 'ei' words and capitalised random letters. Write
a function which will:

a) remove the spelling errors in 'ei' words. (Example of 'ei' words: their, caffeine,
deceive, weight)

b) only capitalise the first letter of each sentence. Make sure the rest of the sentence
is in lower case.

Example: He haD iEght ShOTs of CAffIEne. --> He had eight shots of caffeine.
=end

def proofread(string)
  string.downcase.gsub(/ie/, 'ei').split('. ').map(&:capitalize).join('. ')
end

proofread("THe neIghBour's ceiLing FEll on His Head. The WiEght of It crusHed him To thE gROuNd.")

=begin
Super refactoring code:
def proofread(string)
  string.gsub(/ie/i,'ei').gsub /\w[^.]+/, &:capitalize
end
=end