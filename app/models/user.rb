class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :todos
  has_many :items

  has_many :user_jobs
  has_many :jobs, :through => :user_jobs

  validates :first_name, :last_name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
