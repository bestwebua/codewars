=begin
Scraping: Codewars Top 500 Users by Vladislav Trotsenko.

You should get and parse the html of the codewars leaderboard page.

You can use Nokogiri(Ruby) or BeautifulSoup(Python) or CheerioJS(Javascript).
For Javascript: Return a Promise resolved with your 'Leaderboard' Object!

You must meet the following criteria:
Return a 'Leaderboard' object with a position property.

Leaderboard#position should contain 500 'User' objects.
Leaderboard#position[i] should return the ith ranked User(1 based index).

Each User should have the following properties:
User#name    # => the user's username, not their real name
User#clan    # => the user's clan, empty string if empty clan field
User#honor   # => the user's honor points as an integer

Ex:
an_alien = leaderboard.position[3]   # => #<User:0x3124da0 @name="myjinxin2015", @clan="China Changyuan", @honor=21446>
an_alien.name                        # => "myjinxin2015"
an_alien.clan                        # => "China Changyuan"
an_alien.honor                       # => 21446
=end

require 'nokogiri'
require 'open-uri'

class LeaderboardArray < Array
  def [](index)
    super(index-1)
  end
end

class Leaderboard
  def self.build
    Struct.new('User', :name, :clan, :honor)
    @@leaderboard = LeaderboardArray.new

      url = 'https://www.codewars.com/users/leaderboard'
      page = Nokogiri::HTML(open(url))
      rows = page.css("[class='leaderboard pan'] > table > tr")

        rows.drop(1).each do |row|
          name = row.css('a').text
          clan = row.css('td[3]').text
          honor = row.css('td[4]').text.to_i
          @@leaderboard << Struct::User.new(name, clan, honor)
        end

    @@leaderboard
  end

  def self.position
    @@leaderboard ||= self.build
  end
end

def solution
  Leaderboard
end

solution.position

=begin
# With class instead struct
require 'nokogiri'
require 'open-uri'

class LeaderboardArray < Array
  def size
    length-1
  end
end

class User
  attr_reader :name, :clan, :honor

  def initialize(name, clan, honor)
    @name, @clan, @honor = name, clan, honor
  end
end

class Leaderboard
  def self.build
    @@leaderboard = LeaderboardArray.new
    url = 'https://www.codewars.com/users/leaderboard'
    page = Nokogiri::HTML(open(url))
    rows = page.css("[class='leaderboard pan'] > table > tr")
      rows.each do |row|
        name = row.css('a').text
        clan = row.css('td[3]').text
        honor = row.css('td[4]').text.to_i
        @@leaderboard << User.new(name, clan, honor)
      end
    @@leaderboard
  end

  def self.position
    @@leaderboard ||= self.build
  end
end

def solution
  Leaderboard
end
=end