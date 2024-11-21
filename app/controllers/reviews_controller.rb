# frozen_string_literal: true

class ReviewsController < ApplicationController
  before_action :find_play
  before_action :find_review, only: %i[edit update destroy]
  before_action :authenticate_user!, only: %i[new edit]

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = @play.reviews.build(review_params.merge(user: current_user))

    if @review.save
      redirect_to play_path(@play)
    else
      render 'new'
    end
  end

  def update
    if @review.update(review_params)
      redirect_to play_path(@play)
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to play_path(@play)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def find_play
    @play = Play.find(params[:play_id])
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
