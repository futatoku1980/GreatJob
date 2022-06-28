class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      
      t.integer :user_id
      t.text :objective, null: false
      t.text :summary, null: false
      t.text :introspection, null: false
      t.text :improvement, null: false

      t.timestamps
    end
  end
end
