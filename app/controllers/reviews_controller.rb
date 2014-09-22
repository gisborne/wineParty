class ReviewsController < ApplicationController
  def edit
    @reviewer         = Reviewer.find params[:reviewer_id]
    @review           = Review.find_or_new params[:subject_id], params[:reviewer_id]
    @description_ids  = @review.description_reviews.map &:description_id
    @all_descriptions = Description.all
    @varietal_ids     = @review.review_varietals.map &:varietal_id
    @all_varietals    = Varietal.all
  end

  def create
    r = Review.create params[:review]
    set_values r
  end

  def update
    r = Review.find params[:id]
    r.update_attributes params[:review]
    set_values r
  end

  def set_values r
    r.varietals     = (Varietal.find params[:varietal].keys rescue [])
    r.descriptions  = (Description.find params[:description].keys rescue [])
    r.save!
    redirect_to reviewer_path r.reviewer_id
  end

  def index

  end
end
