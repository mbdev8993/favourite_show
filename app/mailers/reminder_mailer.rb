class ReminderMailer < ApplicationMailer

  default from: 'notifications@example.com'
  def submission(user, show)
    mail(to: user.mail, subject: 'Tv Shows reminder')
  end

end
