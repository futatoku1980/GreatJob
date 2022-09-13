class Admin::CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
    
  end

  def show
   @calendars = Calendar.find(params[:id])
  end
  
  

  def update
    @calendar.stasus = 0
    calendar = Calendar.find(params[:id])
    calendar.update(calendar_params)
    
  end

  private

  def calendar_params
    params.require(:order_item).permit(:status)
  end
  
end 