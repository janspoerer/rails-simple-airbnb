class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(flat_params)
    @review.flat = @flat
    if @review.save
      redirect_to flat_path(@flat.id)
    else
      render :new
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def flat_params
  params.require(:review).permit(:content, :rating)
  end
end
