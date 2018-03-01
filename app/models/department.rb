class Department < ApplicationRecord
  belongs_to :employee, optional: true
end
