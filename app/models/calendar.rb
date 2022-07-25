class Calendar < ApplicationRecord
belongs_to :user
enum status: { nonapproval: 0, approval: 1 }

end
