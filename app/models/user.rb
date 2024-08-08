class User < ApplicationRecord
  has_many :posts
  has_and_belongs_to_many :groups
end
