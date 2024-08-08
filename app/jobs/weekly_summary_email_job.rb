class WeeklySummaryEmailJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    WeeklySummaryMailer.with(user:).summary_email.deliver_now
  rescue ActiveRecord::RecordNotFound
    # Handle user not found, possibly log or notify about this issue
  end
end
