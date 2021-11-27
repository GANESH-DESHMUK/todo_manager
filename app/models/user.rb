class User < ApplicationRecord
  validates :email, presence: true
  validates :first_name, length: { minimum: 4 }
  has_secure_password
  has_many :todos

  def to_pleasent_string
    "#{id}. #{name}, #{email}"
  end
end
