class User < ActiveRecord::Base
  #Make all emails lower case to make for easier indexing
  before_save { self.email = email.downcase }
  #Validations for name
  validates :name, presence: true, length: { maximum: 50 }
  #validation for password length
  validates :password, length: { minimum: 6 }
  #validation for email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #Making sure password is secure, this method requires bcrypt.  It adds password and password_confirmation properties to the user object.
  #https://github.com/rails/rails/blob/master/activemodel/lib/active_model/secure_password.rb
  has_secure_password
end