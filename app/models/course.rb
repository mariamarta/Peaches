class Course < ApplicationRecord
  belongs_to :user
  has_many :grades
end