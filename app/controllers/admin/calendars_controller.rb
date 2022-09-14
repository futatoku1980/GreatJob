class Admin::CalendarsController < ApplicationController
  
  
  def index
    @calendars = Calendar.all
    
  end

  def show
   @calendars = Calendar.find(params[:id])
  end

  
end 