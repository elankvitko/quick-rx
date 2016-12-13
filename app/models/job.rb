class Job < ActiveRecord::Base
  belongs_to :job_category
  has_many :user_jobs
  has_many :users, :through => :user_jobs

  alias_attribute :category, :job_category
end
