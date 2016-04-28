class Project < ActiveRecord::Base
  belongs_to :user
  # belongs_to :code_school

  belongs_to :team
  belongs_to :user
end
