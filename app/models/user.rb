class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :todos
  has_many :items

  validates :first_name, :last_name, presence: true

  validates :signup_code,
            on: :create,
            presence: true,
            inclusion: { in: [ "QuickRX90!" ] }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
