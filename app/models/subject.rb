class Subject < ActiveRecord::Base
  has_many :reviews
  has_many :reviewers, through: :reviews

  def self.num
    18
  end
end