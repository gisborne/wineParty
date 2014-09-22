class Review < ActiveRecord::Base
  belongs_to  :subject
  belongs_to  :reviewer
  has_many    :review_varietals
  has_many    :description_reviews
  has_many    :varietals,     through: :review_varietals
  has_many    :descriptions,  through: :description_reviews

  attr_accessible :subject_id, :reviewer_id, :rating, :price

  order :subject_id

  def self.find_or_new subject_id, reviewer_id
    result = self.find_by_subject_id_and_reviewer_id subject_id, reviewer_id
    result || self.new(subject_id: subject_id, reviewer_id: reviewer_id)
  end

  def descriptions_str
    self.descriptions.map(&:description) * '; '
  end

  def varietals_str
    self.varietals.map(&:varietal) * '; '
  end
end