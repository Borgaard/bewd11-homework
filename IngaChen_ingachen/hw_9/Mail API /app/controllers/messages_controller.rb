class MessagesController < ApplicationController
  before_action :authenticate

  def index
    render json: Message.where(user_id: @auth_user.id), status: 200
  end

  def sent
    render json: Message.where(user_id: @auth_user.id, status: "sent")
  end

  def show
    maybe_message do |message|
      render json: message, status: 200
    end
  end

  def destroy
    maybe_message do |message|
      message.destroy
      render nothing: true, status: 200
    end
  end

  private

  def maybe_message
    id = params[:id]
    message = Message.find_by(id: id)

    if message
      yield message
    else
      render json: { error: "No message with id #{id}" }, status: 400
    end
  end
end
