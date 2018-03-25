class Rob < ApplicationRecord
    
  
                #attr_accessor :password, :password_confirmation 
                 before_save { email.downcase! }
                
 
 #has_secure_password
  
  has_secure_password
end
