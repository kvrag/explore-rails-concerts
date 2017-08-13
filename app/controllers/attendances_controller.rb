class AttendancesController < ApplicationController

  def create
    # respond_to :json
    @attendance = Attendance.new(attendance_params)
    @concert = Concert.find(attendance_params[:concert_id])
    respond_to do |format|
      if @attendance.save
        format.html{ redirect_to @concert }
        format.js{}
        format.json{
            render json: render_to_string(partial: 'attendances/attendee', locals: {attendee: @attendance.user})
        }
      else
        @errors = ["We heard you the first time!"]
        format.html{ 
          render '/concerts/show' }
        format.json{ 
          render json: render_to_string(partial: 'layouts/errors', locals: {errors: @errors}) 
        }
        # WHAT THE FUCK WHYYY
      end
    end
  end

  private
    def attendance_params
      params.require(:attendance).permit(:user_id, :concert_id)
    end
end