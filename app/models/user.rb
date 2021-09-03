# email:string
# password_digest:string
#
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Deve ser um endereço de email valido !" }
  #validates :email, presence :true, format: { with: /\A[^@\s]+@[^@\s]+\z/}   //erro o presence : 
  
  
end
