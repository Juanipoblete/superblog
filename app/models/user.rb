class User < ApplicationRecord
  has_many :post
  has_many :message
  has_many :owner  
  
   validates :first_name, :last_name, :email_address, presence: {message:"Este campo es requerido"}
end