class ReviewsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @review = @project.reviews.build(review_params)
    authorize @project
    if @review.save!
      ;flash[:notice] = 'review was successfully created.'
      redirect_to @project
    else
      flash[:notice] = "Error creating review: #{@review.errors}"
      redirect_to @project
    end
  end

   def new

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to(@review.project)
  end

  private

    def review_params
       params.require(:review).permit(:content)
    end
end
