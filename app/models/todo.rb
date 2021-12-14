class Todo < ApplicationRecord
  scope :from_user, -> (email) { where('email = ?', email) }
end
