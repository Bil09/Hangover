class ChatroomsController < ApplicationController
  def index
    participations = Participant.where(user: current_user)
    @chatrooms = participations.map { |participation| participation.party.chatroom }
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
