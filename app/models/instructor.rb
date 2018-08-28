class Instructor < ApplicationRecord
    belongs_to :course, dependent: :destroy,
end