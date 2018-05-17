class Condo < ApplicationRecord
  belongs_to :user
  has_many :cats, dependent: :destroy
  # validates :user_id, presence: true

  # def user_condo
  #   if current_user
  #     current_user.condo_id = current_user.id
  #     @user_condo = current_user.condo_id
  #     # binding.pry
  #   end
  # end
end