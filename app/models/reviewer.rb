class Reviewer < ActiveRecord::Base
  has_many :reviews
  has_many :subjects, through: :reviews

  attr_accessible :name, :email, :phone

  def missing_reviews
    missing_ids = (1..Subject.num).to_a - self.reviews.map{|x| x.subject_id}
    missing_ids.map{|x| Review.new subject_id: x, reviewer_id: self.id}
  end
end