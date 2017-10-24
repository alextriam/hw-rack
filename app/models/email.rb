module EmailCollector
  class Email

    attr_accessor :email

    def initialize(email)
            if email.scan(/@/) == '@'
              self.save
            else
              self.errors
            end
    end

   def save
      File.open('./db/email_addresses.txt', 'a'){ |file| file.puts @email }
      puts @email.to_s + "save email"
      return @errors = ''
   end

   def errors

     return @errors = 'Wrong email format'

     end
   end
end
