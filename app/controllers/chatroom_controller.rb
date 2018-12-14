class ChatroomController < ApplicationController

  before_action :require_user, only: [:index]

  def index
    @message = Message.new
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to root_path
    end
  end

  private
    def message_params
      params.require(:message).permit(:body)
    end

end
