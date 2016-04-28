class User < ActiveRecord::Base
  validates :email, uniqueness: true

  belongs_to :code_school
  has_many :profiles
  has_many :projects

  # has_many :team_users
  # has_many :teams, through: :team_users

  # @active_users = User.where(active: true)
  # @active_users = User.active
  # def self.active
  #   where(active: true)
  # end
  scope :active, -> { where(active: true) }

  # def self.cohort(cohort_number)
  #   where(cohort: cohort_number)
  # end
  scope :cohort, ->(cohort_num) { where(cohort: cohort_num) }

  # def self.active_cohort(cohort_number)
  #   active.cohort(cohort_number)
  # end
  scope :active_cohort, ->(cohort_num) { active.cohort(cohort_num)}

end
