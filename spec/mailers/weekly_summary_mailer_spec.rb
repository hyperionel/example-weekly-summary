require 'rails_helper'

RSpec.describe WeeklySummaryMailer, type: :mailer do
  let(:user) { create(:user) }

  it 'sends the weekly summary email' do
    email = WeeklySummaryMailer.with(user:).summary_email
    expect(email.subject).to eq('Your Weekly Summary')
    expect(email.to).to eq([user.email])
    expect(email.from).to eq(['no-reply@socialmediaplatform.com'])
  end
end
