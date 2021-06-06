class User < ApplicationRecord
    has_secure_password
    has_one :pet, dependent: :destroy  
    validates :email, uniqueness: { case_sensitive: false }
end
