class ChatroomsController < ApplicationController
  def index
    participations = Participant.where(user: current_user)
    @chatrooms = participations.map { |participation| participation.party.chatroom }
    @post = Post.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
