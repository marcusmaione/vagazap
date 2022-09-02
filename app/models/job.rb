class Job < ApplicationRecord
  JOBPOSITIONS = ["Intern", "Analyst", "Manager", "Director"].freeze
  JOBLEVELS = ["Junior", "Senior"].freeze
  belongs_to :company
end
