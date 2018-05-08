class User < ApplicationRecord
validates_presence_of :name, :email, :pass
validates :email, uniqueness: true
has_secure_password
end
