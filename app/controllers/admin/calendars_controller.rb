class Admin::CalendarsController < ApplicationController


  def index
    @calendars = Calendar.all

  end


  def show
   @calendars = Calendar.find(params[:id])
  end
  

  def update
    if status.update(calendar_params)
      redirect_to admin_calendar_path, notice: "対応ステータスを更新しました"
    else
      render :show, alert: "対応ステータスを更新できませんでした"
    end
  end

  private

  def calendar_params
    params.require(:calendar).permit(:status)
  end

  
  
  
  
  
end