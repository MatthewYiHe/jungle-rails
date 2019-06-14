class Review < ActiveRecord::Base

  belongs_to :product

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true
  validates :comment, presence: true

  def blank_stars
   5 - rating.to_i
  end
end
