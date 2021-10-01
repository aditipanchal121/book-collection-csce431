class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true, numericality: true
    validates :publishedDate, presence: true, timeliness: true
end
