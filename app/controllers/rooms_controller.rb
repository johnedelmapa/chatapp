class RoomsController < ApplicationController
  def index
    @current_user = current_user
    redirect_to '/users/sign_up' unless @current_user
    @users = User.all_except(@current_user)
  end

  def show
    @current_user = current_user
    @single_room = Room.find(params[:id])
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
    @room = Room.new
    @message = Message.new
    @messages = @single_room.messages
  
    render "index"
  end
end
