class JobCategory < ActiveRecord::Base
  has_many :jobs
  alias_attribute :positions, :jobs
end
