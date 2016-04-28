class CodeSchool < ActiveRecord::Base
  # has_many :users
  has_many :students, class_name: 'User'
  has_many :projects, through: :students
  has_many :urls, through: :projects

  has_many :team_users;
  has_many :users, through: :team_users
end
