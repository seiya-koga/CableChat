class ChatRoomsController < ApplicationController
  # def index
  #   @chat_rooms = ChatRoom.all
  # end

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = current_user.chat_rooms.build(chat_room_params)
    if @chat_room.save
      flash[:success] = 'Chat room added!'
      redirect_to chat_room_path(@chat_room)
    else
      render 'new'
    end
  end

  def show
    @chat_rooms = ChatRoom.all
    if @chat_rooms.present?

      @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
      @message = Message.new
    else
      redirect_to action: "new"
    end
  end

  def omniauth_authorize_path(resource_name, provider)
    send "#{resource_name}_omniauth_authorize_path", provider
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title)
  end
end
