class DescriptionReview < ActiveRecord::Base
  set_table_name 'descriptions_reviews'

  set_primary_key [:description_id, :review_id]

  belongs_to :description
  belongs_to :review
end