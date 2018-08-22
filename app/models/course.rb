class Course < ApplicationRecord
    has_one :instructor
    has_many :cohorts, :through => :schedules
    has_many :schedules
end
