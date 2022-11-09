class User < ApplicationRecord
  validates :name, :email, :uid, :token, presence: true

  has_many :games
end
