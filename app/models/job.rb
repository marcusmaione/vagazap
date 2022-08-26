class Job < ApplicationRecord
  JOBPOSITIONS = ["Intern", "Analyst", "Manager", "Director"].freeze
  belongs_to :company
end
