class Calendar < ApplicationRecord
  belongs_to :user
  
  enum status: {permission:0, notpermission:1 }
  
  with_options presence: true do
    validates :title
    validates :start_time
    validates :content
  end

end
