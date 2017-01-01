class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  default_scope { order(created_at: :desc) }
end
