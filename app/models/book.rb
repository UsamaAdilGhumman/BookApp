class Book < ApplicationRecord

    belongs_to :author

    has_many :booktags
    has_many :tag, through: :booktags,  dependent: :destroy
    
    validates :title, presence: true
    validates :des, presence: true, length: { minimum: 10 }
end
