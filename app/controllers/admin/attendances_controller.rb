class Admin::AttendancesController < ApplicationController
  
  def index
    @attendances = Attendance.all
  end
  
  
end
