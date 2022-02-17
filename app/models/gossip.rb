class Gossip < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :tags


validates :title, 
presence: true,
length: { in: 3..14 , wrong_length: " doit etre entre 3 et 14 caracteres"  }


validates :content, 
presence: true
end
