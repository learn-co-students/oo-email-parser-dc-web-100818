# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)
#
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    separated_emails = emails.split(' ')
    fixed_emails = separated_emails.collect { |email| email.gsub(',', '')}
    emails = []
    fixed_emails.each do |email|
      emails << email
    end
    self.emails = emails
  end

  def parse
    self.emails.uniq
  end
end
