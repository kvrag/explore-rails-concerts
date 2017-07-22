class AttendancesController < ApplicationController

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save 
      redirect_to "/concerts/#{@attendance.concert_id}"
    else
      @errors = @attendance.errors.full_messages
      render concert_path(@attendance.concert)
    end
  end
end