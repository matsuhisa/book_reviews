class Book < ActiveRecord::Base
  paginates_per 5
  has_many :reviews, -> { active }
end
