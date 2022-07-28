class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.datetime :start_time
      t.integer :status,default: 0, null: false

      t.timestamps
    end
  end
end
