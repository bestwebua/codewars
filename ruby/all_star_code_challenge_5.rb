=begin
All Star Code Challenge #5 by Vladislav Trotsenko.

Create a function, called randomMovies, that takes in an array of movie strings
and returns one of those movies randomly:

movies = ["Rocky", "Rocky II", "Rocky III", "Rocky IV"]
randomMovies(movies) # => "Rocky"
=end

def randomMovies(movies)
  movies.shuffle.first
end

randomMovies(["Rocky", "Rocky II", "Rocky III", "Rocky IV"])

=begin
def randomMovies(movies)
  movies.sample
end
=end