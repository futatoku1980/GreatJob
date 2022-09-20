class Admin::CalendarsController < ApplicationController


  def index
    @calendars = Calendar.all

  end


  def show
   @calendars = Calendar.find(params[:id])
  end
  

  def update
    @calendar = Calendar.find(params[:id])
    calendar.update(calendar_params)
    redirect_to admin_calendar_path(calendar.id)
  end

  private

  def calendar_params
    params.require(:calendar).permit(:status)
  end



end