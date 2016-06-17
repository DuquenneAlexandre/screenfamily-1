class ReviewsController < ApplicationController
 def new
    @context = context
    @review = @context.reviews.new
  end

  def create
     # @project = Project.find(params[:project_id])
     #   authorize @project
    @context = context
    @review = @context.reviews.new(review_params)
    authorize @review
 
    if @review.save
   respond_to do |format|
       format.html { redirect_to :back }
          format.js
        end
        else
             respond_to do |format|
            format.html { redirect_to :back }
          format.js
      # redirect_to context_url(context), notice: "The review has been successfully created."
    end
    end
  end

private
  def review_params
    params.require(:review).permit(:content, :contents_prof)
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