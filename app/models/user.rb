class User < ApplicationRecord
  has_secure_password
  
  has_secure_token :email_confirmation_token

  validates :username,
    format: { with: /\A[A-Za-z0-9_]{2,20}\z/ , message: 'should contain 2 to 20 alphanumeric characters' },
    uniqueness: { case_sensitive: false }

    validates :email,
      format: { with: URI::MailTo::EMAIL_REGEXP },
      uniqueness: { case_sensitive: false }
end
