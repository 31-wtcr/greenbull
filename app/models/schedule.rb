class Schedule < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :start_date_and_time
    validates :end_date_and_time
  end

  has_many :user_schedules
  has_many :users, through: :user_schedules
end