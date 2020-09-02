class Masters::ChatsController < Masters::ApplicationController
  def index
    @apartment = ChatroomApartment.all
    @residence = ChatroomResidence.all
  end

  def show
  end

end