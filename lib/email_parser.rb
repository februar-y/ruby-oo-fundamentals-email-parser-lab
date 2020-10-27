# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end

    attr_accessor :emails

    def parse
        if @emails.include?(',')
            email_array = @emails.split(/\s|, /)
        else
            email_array = @emails.split
           
        end
        email_array = email_array.uniq
        email_array
    end



end
