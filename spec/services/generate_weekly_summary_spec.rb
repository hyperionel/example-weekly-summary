require 'rails_helper'

RSpec.describe GenerateWeeklySummary, type: :service do
  let(:user) { create(:user) }
  let(:group) { create(:group) }
  let!(:post) { create(:post, group:, user:, likes_count: 10) }

  before do
    user.groups << group
  end

  it 'returns a hash with group names and top posts' do
    summary = GenerateWeeklySummary.new(user).call
    expect(summary[group.name]).to include(post)
  end
end
