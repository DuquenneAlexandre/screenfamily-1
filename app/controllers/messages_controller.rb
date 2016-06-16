class MessagesController < ApplicationController
  before_action :set_message

    def new
        @message = @project.messages.new
     end

     def create
       @project = Project.find(params[:project_id])
       authorize @project
       #@project.users << current_user
       @message = @project.messages.build(message_params)
       @message.user = current_user
       @message.save
     end

     private

     def message_params
       params.require(:message).permit(:content)
     end

     def set_message
     end
end
