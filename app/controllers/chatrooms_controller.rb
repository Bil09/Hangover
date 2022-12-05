class ChatroomsController < ApplicationController
  def index
    participant = Participant.find_by user: current_user
    if participant
      @chatrooms = participant.chatrooms
    else
      @chatrooms = []
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
