class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre
  has_one_attached :poster
end
