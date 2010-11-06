class RequestMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def request_information(request)
    @request = request
    @url = "http://northpointcanadian.heroku.com/requests"
    people = ["ajivani.test@gmail.com","faisal@northpointcanadian.com","info@northpointcanadian.com"]
    #people = ["ajivani@gmail.com","ajivani.test@gmail.com"]
    persons = ""
    people.map{|name|
      persons<<name<<", "
    }

    2.times {persons.chop!} #leaves just the list of names without a comma
    mail(:to=>persons,
         :subject=>"Welcome to my site")
  end

end
