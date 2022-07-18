class Tag < ApplicationRecord

    has_many :booktags
    has_many :books, through: :booktags
end
