class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user, -> {active}

  scope :active, -> { published.where(deleted_at: nil) }

  enum state: { unpublished: 0, published: 1 }

end
