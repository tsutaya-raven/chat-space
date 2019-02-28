class MessagesController < ApplicationController

    @message = Message.new
  end

  def create
    Message.create(text: params["text"],image: params["text"])
  end

private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

end
