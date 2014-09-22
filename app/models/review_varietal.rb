class ReviewVarietal < ActiveRecord::Base
  set_table_name 'reviews_varietals'

  self.primary_key = [:review_id, :varietal_id]

  belongs_to :review
  belongs_to :varietal
end