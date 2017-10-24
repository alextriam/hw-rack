module EmailCollector
  class EmailsController
    def self.create(req)
      if req.params.key?('email')
        Email::save(email)
        [200, { 'Content-Type' => 'text/plain' }, ['Missing param: email']]
      else
        [403, { 'Content-Type' => 'text/plain' }, ['Missing param: email']]
      end
    end
  end
end
