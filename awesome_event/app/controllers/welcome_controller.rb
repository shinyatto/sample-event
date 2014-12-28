class WelcomeController < ApplicationController
  PRE = 2
  
  def index
    @events = Event.page(params[:page]).per(PRE).where('start_time > ?', Time.zone.now).order(:start_time)
  end  
end
