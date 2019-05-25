=begin
File Path Operations by Vladislav Trotsenko.

This kata requires you to write an object that receives a file
path and does operations on it.

The purpose of this kata is to use string parsing, so you're
not supposed to import external libraries.


master = FileMaster.new('/Users/person1/Pictures/house.png')
master.extension
#--> png
master.filename
#--> house
master.dirpath
#--> /Users/person1/Pictures/
=end

class FileMaster
  attr_reader :extension, :filename, :dirpath
  def initialize(filepath)
    @dirpath, @filename, @extension = filepath.match(/(.+(?=\/)\/)(.+)(?=\.)\.(.+)/i).captures
  end
end

master = FileMaster.new('/Users/person1/Pictures/house.png')
master.extension
master.filename
master.dirpath

=begin
#Before refactoring code:
class FileMaster
  def initialize(filepath)
    @dirpath, @filename, @extension = filepath.match(/(.+(?=\/)\/)(.+)(?=\.)\.(.+)/i).captures
  end

  def extension
    @extension
  end

  def filename
    @filename
  end

  def dirpath
    @dirpath
  end
end
=end