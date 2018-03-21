class Rob < ApplicationRecord
     validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
                #attr_accessor :password, :password_confirmation 
                 before_save { email.downcase! }
                
 validates :password, presence: true, length: { minimum: 6 }
 #has_secure_password
  
  has_secure_password
end
