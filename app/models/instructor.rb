class Instructor < ApplicationRecord
    belongs_to :course
    has_many :schedules, dependent: :destroy

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end