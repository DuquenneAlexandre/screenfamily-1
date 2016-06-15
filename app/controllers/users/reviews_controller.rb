class ReviewsController < ApplicationController
  def create
    @user = Project.find(params[:user_id])
    @review = @user.reviews.build(review_params)
    authorize @user
    if @review.save!
      ;flash[:notice] = 'review was successfully created.'
      redirect_to @user
    else
      flash[:notice] = "Error creating review: #{@review.errors}"
      redirect_to @user
    end
  end
  
   def new

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
 
    redirect_to(@review.user)
  end

  private

    def review_params
       params.require(:review)
              .permit(:content)
    end
end