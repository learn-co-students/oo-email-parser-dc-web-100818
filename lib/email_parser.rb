# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :email_list
  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    delimiters = [", ", " "]
    @email_list.split(Regexp.union(delimiters)).uniq
  end
end
