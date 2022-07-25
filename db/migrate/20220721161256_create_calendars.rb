class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.integer :user_id ,null: false
	    t.string :title
	    t.string :me
	    t.datetime :start_time
      t.timestamps
      t.integer :status, default: "0"
    end
  end
end
