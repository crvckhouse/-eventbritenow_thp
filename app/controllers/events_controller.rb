class EventsController < ApplicationController
  def index
    @events = Event.all
    @user = User.last.email
    puts @user
  end
  def new
  end
end
