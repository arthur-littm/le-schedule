class Slot < ApplicationRecord
  belongs_to :work_day
  belongs_to :user
end
