=begin
Suzuki needs help lining up his students! by Vladislav Trotsenko.

For instance:
string = 'Tadashi Takahiro Takao Takashi Takayuki Takehiko Takeo Takeshi Takeshi'
=>
string = ['Takehiko',
       'Takayuki',
       'Takahiro',
       'Takeshi',
       'Takeshi',
       'Takashi',
       'Tadashi',
       'Takeo',
       'Takao']
=end

def lineup_students(students)
  students.split.sort_by { |s| [s.size, s] }.reverse
end

lineup_students('bbb aaa c ccc cc a b')

=begin
Before refactoring #1:
def lineup_students(students)
  students.split.sort.sort_by(&:size).reverse
end
=end