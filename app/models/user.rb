class User < ActiveRecord::Base
  # validates :name, presence: true
  validates :password, presence: true, confirmation: true

  def authenticate(pwd)
    self.password == pwd ? self : nil
  end

end
