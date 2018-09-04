class Schedule < ApplicationRecord
    belongs_to :instructor
    belongs_to :cohort
    belongs_to :course

    validates :instructor_id, :presence => true
    validates :cohort_id, :presence => true
    validates :course_id, :presence => true

    def self.days_of_week
        ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
    end
    validates :day_of_week, inclusion: days_of_week
end
