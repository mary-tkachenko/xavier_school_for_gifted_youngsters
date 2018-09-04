class Course < ApplicationRecord
    has_one :instructor, dependent: :destroy
    has_many :cohorts, :through => :schedules
    has_many :schedules, dependent: :destroy
    validates :class_hours, numericality: { greater_than: 0 }
end
