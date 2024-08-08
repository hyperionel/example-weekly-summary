class WeeklySummaryMailer < ApplicationMailer
  default from: 'no-reply@socialmediaplatform.com'

  def summary_email
    @user = params[:user]
    @summary_content = GenerateWeeklySummary.new(@user).call
    mail(to: @user.email, subject: 'Your Weekly Summary')
  end
end
