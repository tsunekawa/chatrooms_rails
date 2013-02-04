class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  def index
    @messages = if params[:room_id].blank? then
      Message.all
    else
      Message.where(:room_id=>params[:room_id]).all
    end

    @messages
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])
  end

  # POST /messages
  # POST /messages.json
  def create
    @message      = Message.new(params[:message])
    @message.user = current_user
    @status  = if @message.save then
      @message  
    else
      render :json=> @message, :status=> :unprocessable_entity
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
end
