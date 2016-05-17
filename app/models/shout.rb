class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  # scope :ordered, -> { order(created_at: :desc) }
  default_scope { order(created_at: :desc) }
end
