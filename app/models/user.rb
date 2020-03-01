class User < ApplicationRecord
    has_secure_password

    has_many :posts
    has_many :categories, through: :posts

    validates_presence_of :firstName
    validates_presence_of :lastName
    validates_presence_of :username
    validates_presence_of :email
    validates_presence_of :password

end
