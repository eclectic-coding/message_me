class ChatroomController < ApplicationController
  # before_action :require_user

  def index
    @message = Message.new
    @messages = Message.all
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
