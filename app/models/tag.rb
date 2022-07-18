class Tag < ApplicationRecord

    has_many :booktags
    has_many :book, through: :booktags
end
