class Public::AttendancesController < ApplicationController
  def new
  end





  def create
    at = current_user.attendances.last
    if (at.go_work != nil) && (at.leaving_work == nil)
      redirect_to root_path, alert: "出勤できません"
    else
      current_user.attendances.create!(go_work: DateTime.now)
      redirect_to public_attendances_path
    end

    # if restrict_create_button == true
      # @attendance = Atendance.new(go_work: DateTime.now)
      # @attendance.user_id = current_user.id
      # @attendance.save

    # end
    #redirect_to root_path


  end





  def update
    at = current_user.attendances.last
    if params[:type] == "leaving_work"
      at.update!(leaving_work: DateTime.now)
      redirect_to public_reports_new_path


    #else params[:type] == "go_work" && params[:type] !=="leaving_work"
    end
  end




  def index
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
