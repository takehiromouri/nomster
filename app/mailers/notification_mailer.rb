class NotificationMailer < ActionMailer::Base
  default from: "natsuko@gmail.com"

  def comment_added
  	mail(to: "takehiromouri@gmail.com",
  		subject: "A comment has been added to your place")
  end
end
