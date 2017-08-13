class RemoveAttendeeIdFromAttendances < ActiveRecord::Migration[5.0]
  def change
    remove_column :attendances, :attendee_id
  end
end
