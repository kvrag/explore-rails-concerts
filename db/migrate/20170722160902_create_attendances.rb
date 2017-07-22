class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.references :user, as :attendee
      t.references :concert
    end
  end
end
