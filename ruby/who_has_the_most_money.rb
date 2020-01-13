=begin
Who has the most money?

You're going on a trip with some students and it's up to you
to keep track of how much money each Student has. A student
is defined like this:

class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end
end

As you can tell, each Student has some fives, tens, and twenties.
Your job is to return the name of the student with the most money.
If every student has the same amount, then return "all".

Notes:
Each student will have a unique name
There will always be a clear winner: either one person has the most,
or everyone has the same amount
If there is only one student, then that student has the most money
=end

Student.class_eval { define_method(:amount) { @amount ||= fives*5 + tens*10 + twenties*20 } }

def most_money(students)
  max = students.max_by(&:amount)
  students.count { |i| i.amount.eql?(max.amount) } > 1 ? 'all' : max.name
end

# def most_money(students)
#   max = students.max_by(&:amount)
#   students.map(&:amount).group_by(&:itself).find { |k, v| v.size > 1 && k.eql?(max.amount) } ? 'all' : max.name
# end
