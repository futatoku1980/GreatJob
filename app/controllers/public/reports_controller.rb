class Public::ReportsController < ApplicationController
  def new
    @report = Report.new
  end


  def create
    @report = Report.new(report_params)
    @report.user_id = current_user.id
    if @report.save
       redirect_to new_public_report_path,notice: "保存しました"
    else
       redirect_to new_public_report_path,notice: "空欄があります"
    end

  end

  def update
   
  end


  def index
    @reports = Report.all
    @reports = current_user.reports
  end
  
  def show
    @reports = Report.find(params[:id])
  end
  
  private

  def report_params
    params.require(:report).permit(:user_id, :objective, :summary, :introspection, :improvement)
  end
  
end
