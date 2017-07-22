class AttendancesController < ApplicationController

  def create
    @attendance = Attendance.new(attendance_params)
    @concert = Concert.find(attendance_params[:concert_id])
    if @attendance.save 
      redirect_to concert_url(@concert)
    else
      @errors = @attendance.errors.full_messages
      render concert_path(@concert)
    end
  end

  private
    def attendance_params
      params.require(:attendance).permit(:user_id, :concert_id)
    end
end