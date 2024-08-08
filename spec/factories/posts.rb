FactoryBot.define do
  factory :post do
    content { 'This is a post content.' }
    likes_count { 0 }
    association :user
    association :group
  end
end
