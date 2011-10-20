class Notifications < ActionMailer::Base
  default from: "from@example.com"
  def contact_email()
    @url = "http://example.com/login"
    mail(:to => "sumikio@gmail.com",
         :subject => "Welcome to My Awesome Site")
  end
  
  
end
