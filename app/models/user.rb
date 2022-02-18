class User < ApplicationRecord

    belongs_to :city
    has_many :Gossips  
    
    validates :first_name, 
    presence: true
    
    
    # validates :last_name, 
    # presence: true
    
    
    # validates :email, 
    # presence: true,
    # format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    #     message: "format du mail a revoir" }



end
