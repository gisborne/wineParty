class Description < ActiveRecord::Base
  has_many :reviews, through: :description_review

  default_scope order: :description

  attr_accessible :description
end