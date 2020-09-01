class Masters::ChatsController < Masters::ApplicationController
  def index
    @apartment = ChatroomApartment.all
    @residence = ChatroomResidence.all
  end

end