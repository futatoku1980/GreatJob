class AddEnployeeCodeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :enployee_code, :string
    add_index :users, :enployee_code, unique: true
  end
end
