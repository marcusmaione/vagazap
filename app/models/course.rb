class Course < ApplicationRecord
  DEGREELEVELS = ["High school", "Bacherlor's", "Master's", "Doctorate", "Other"].freeze
  belongs_to :user
end
