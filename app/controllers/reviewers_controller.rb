class ReviewersController < ApplicationController
  def welcome
    @title = "Welcome to the wine party"
    @reviewers = Reviewer.all
    @new_reviewer = Reviewer.new
  end

  def create
    r = Reviewer.create params['reviewer']
    redirect_to r
  end

  def show
    @reviewer = Reviewer.find params[:id]
    @reviews = @reviewer.reviews

    @missing_reviews = @reviewer.missing_reviews
  end
end