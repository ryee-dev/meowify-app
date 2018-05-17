class Condo < ApplicationRecord
  belongs_to :user
  has_many :cats, dependent: :destroy

  validates :user_id, presence: true
end