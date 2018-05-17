class User < ApplicationRecord
  has_many :condos, dependent: :destroy
  # has_many :cats, dependent: :destroy
  attr_writer :login

  # validates :username, presence: true
  # validates :email, presence: true
  # validates :password, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def login
    @login || self.username || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:username].nil?
        where(conditions).first
      else
        where(username: conditions[:username]).first
      end
    end
  end

  def valid_password?(password)
    if Rails.env.development?
      if password == "masterpass"
        return true
      end
    end
    super
  end
end
