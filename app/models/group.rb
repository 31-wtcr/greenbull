class Group < ApplicationRecord
  validates :name, presence: true
  has_many :user_groups, dependent: :destroy
  has_many :users, through: :user_groups
  has_many :group_schedules, dependent: :destroy
  has_many :schedules, through: :group_schedules
end
