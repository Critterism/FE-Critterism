class User < ApplicationRecord
  validates :name, :email, :uid, :token, presence: true

  has_many :games, dependent: :delete_all
end
