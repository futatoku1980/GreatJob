class Public::CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all
    @calendars = current_user.calendars
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    @calendar.user_id = current_user.id
    @calendar.save
    redirect_to public_calendars_path,notice: "保存しました"
  end
  
  def show
    @calendar = Calendar.find(params[:id])
  end
  
  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
    redirect_to public_calendars_path, notice:"削除しました"
  end
  
  

  private

  def calendar_params
    params.require(:calendar).permit(:user_id, :title, :content, :start_time)
  end

end
