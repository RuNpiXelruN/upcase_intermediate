class Shout < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true
  # scope :ordered, -> { order(created_at: :desc) }
  default_scope { order(created_at: :desc) }
end
