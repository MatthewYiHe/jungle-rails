class User < ActiveRecord::Base

  has_many :reviews

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness:{case_sensitive: false}
  validates :password, presence: true, length: { in: 4..20 }

end
