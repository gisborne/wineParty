class Varietal < ActiveRecord::Base
  has_many  :review_varietals
  has_many  :reviews, through: :review_varietals

  default_scope order: :varietal
end