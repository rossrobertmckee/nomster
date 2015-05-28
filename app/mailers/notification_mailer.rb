class NotificationMailer < ActionMailer::Base
  default from: "no_reply@zeneticut.com"

  def comment_added
  	mail(to: "rossrobertmckee@gmail.com",
  		subject: "Someone just commented on your post!")
  end

end
