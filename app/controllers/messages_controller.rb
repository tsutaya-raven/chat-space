class MessagesController < ApplicationController

  #before_action :move_to_index, except: :index

  def index
    @messages = Message.all
  end

  def new
  end

  def create
    Message.create(text: params["text"],image: params["text"])
  end

# private
#   def move_to_index
#     redirect_to :action => "index" unless user_signed_in?
#   end

end
