require 'digest/md5'

class User < ApplicationRecord
  before_save :encrypt_password
  
  def authenticate(password)
    self.password_digest == Digest::MD5.hexdigest(password)
  end

  private

  def encrypt_password
    self.password_digest = Digest::MD5.hexdigest(password) if password.present?
  end
end
