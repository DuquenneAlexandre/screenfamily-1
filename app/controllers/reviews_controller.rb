class ReviewsController < ApplicationController
 def new
    @context = context
    @review = @context.reviews.new
  end

  def create
    @context = context
    @review = @context.reviews.new(review_params)
    authorize @review
    if @review.save
      redirect_to context_url(context), notice: "The review has been successfully created."
    end
  end

private
  def review_params
    params.require(:review).permit!
  end

  def context
    if params[:project_id]
      id = params[:project_id]
      Project.find(params[:project_id])
    else
      id = params[:user_id]
      User.find(params[:user_id])
    end
  end 

  def context_url(context)
    if Project === context
      project_path(context)
    else
      user_path(context)
    end
  end
end