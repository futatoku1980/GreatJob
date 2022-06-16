class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      
      t.integer :user_id
      t.timestamp :go_work, null: false
      t.timestamp :leaving_work
      t.timestamp :start_lest
      t.timestamp :finish_lest
      

      t.timestamps
    end
  end
end
