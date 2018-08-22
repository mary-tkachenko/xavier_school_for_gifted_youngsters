class Course < ApplicationRecord
    has_one :instructor
    has_many :cohorts, :through => :schedules
    belongs_to :schedule
end
