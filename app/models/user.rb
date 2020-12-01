class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :subscriptions
  has_many :workshops
  has_many :orders
  has_one_attached :photo
  #validates :username, :first_name, :last_name, :country, :city, :state, :postcode, :street, presence: true
  #validates :username, uniqueness: true
  #validates_format_of :country, :city, :state, with: /\D+/i
  # TODO: validation of phone number with regex. Look up in excercise @Michael

end
