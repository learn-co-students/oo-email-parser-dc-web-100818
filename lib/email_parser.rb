class EmailParser
  attr_accessor :emails

    def initialize(emails)
      @emails = emails
    end

    def parse
      emails.split(/[\s,]/).delete_if {|x| x.length < 2}.uniq
    end

end
