class Task < ActiveRecord::Base
  validates :title, presence: true
  validates :deadline, presence: true
end