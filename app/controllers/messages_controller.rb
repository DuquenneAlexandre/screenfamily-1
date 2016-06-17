class MessagesController < ApplicationController
  before_action :set_message

    def new
        @message = @project.messages.new
     end

     def create
       @project = Project.find(params[:project_id])
       authorize @project
       @message = @project.messages.build(message_params)
       @message.user = current_user
       
      if @message.save
        respond_to do |format|
          format.html { redirect_to project_path(@project) }
          format.js
        end
      else
        respond_to do |format|
          format.html { redirect_to project_path(@project) }
          format.js
        end
      end
    end

     private

     def message_params
       params.require(:message).permit(:content)
     end

     def set_message
     end
end
