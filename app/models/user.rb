class User < ApplicationRecord
  validates :name, :email, :uid, :token, presence: true
end
