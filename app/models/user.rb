class User < ApplicationRecord

  has_secure_password
  REGAL_PASSWORD = /\A[0-9]+\z/
  validates :password, presence: true, length: { minimum: 4, maximin: 4}, format: {with: REGAL_PASSWORD}, allow_nil: true

  

end
