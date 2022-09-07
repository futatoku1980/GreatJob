class Public::AttendancesController < ApplicationController
  def new
  end





  def create
     #at = current_user.attendances.last

     at = current_user.attendances.last
    if !at.nil? && at.go_work != nil && at.leaving_work == nil
      flash[:alret] = "出勤している。または退勤していません"
      redirect_to new_public_attendance_path, notice
    else
      current_user.attendances.create!(go_work: DateTime.now)
      flash[:notice] = "出勤しました"
      redirect_to new_public_attendance_path
    end


  end





  def update
    at = current_user.attendances.last
    pp at ,at.nil? , at.go_work.nil? , !at.leaving_work.nil?
    if at.nil? || at.go_work.nil? || !at.leaving_work.nil?
      return
    end
    
    if params[:type] == "leaving_work" && (at.start_lest.nil? || !at.finish_lest.nil?)
      at = current_user.attendances.last
      at.update!(leaving_work: DateTime.now)
      flash[:notice] = "退勤しました"
      redirect_to root_path

    elsif params[:type] == "start_lest" && at.start_lest.nil?
      at.update!(start_lest: DateTime.now)
      flash[:notice] = "休憩開始"
      redirect_to new_public_attendance_path

    elsif params[:type] == "finish_lest" && !at.start_lest.nil? && at.finish_lest.nil?
      at.update!(finish_lest: DateTime.now)
      flash[:notice] = "休憩終了"
      redirect_to new_public_attendance_path

    end

     
  end




  def index
   @attendances = Attendance.all
   @attendances = current_user.attendances
  end

  private

  # def  restrict_create_button
  #   at = current_user.attendances.last
  #   if at.go_work != nil
  #     #redirect_to public_attendances_path, alert: "出勤できません"
  #     return false
  #   end
  #   return true
  # end



end
