class User < ApplicationRecord
    has_many :tasks
    validates :name, presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
end
