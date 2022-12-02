class ChatroomsController < ApplicationController
  def index
    @chatroom = current_user.party.map(&:chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
