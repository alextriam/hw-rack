module EmailCollector
  class Email

    attr_accessor :email

    def initialize(email)
      @email = email
    end

   def save
    if email.split(/@/).size == 2
      File.open(EmailCollector::DATABASE, 'a'){ |file| file.puts @email }
      @errors = ''
    else
     @errors = 'Wrong email format.'
     return false
    end

   end

   def errors
     @errors
   end
   end
end
