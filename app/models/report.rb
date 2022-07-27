class Report < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :objective
    validates :summary
    validates :introspection
    validates :improvement
  end

end
