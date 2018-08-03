class User < ApplicationRecord
<<<<<<< HEAD
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
=======
validates_presence_of :name, :email, :pass
validates :email, uniqueness: true
has_secure_password
>>>>>>> 554fc4b616ecf32955d401c26c667b82baa6ed80
end
