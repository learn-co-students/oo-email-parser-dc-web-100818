# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
 
  @@all = []
 
 attr_reader :string
  
  def initialize(string) 
    @string = string
  end 

  def parse
    string = self.string.split(", ")
    string.collect! do |parse_1|
      parse_1.split
    end 
    string.flatten.uniq
  end 


end 