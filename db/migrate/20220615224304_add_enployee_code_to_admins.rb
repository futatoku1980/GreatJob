class AddEnployeeCodeToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :enployee_code, :string
    add_index :admins, :enployee_code, unique: true
  end
end
