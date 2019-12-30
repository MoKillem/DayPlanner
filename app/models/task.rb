class Task < ApplicationRecord
  belongs_to :day
  validates :description,:title,:time_started,:time_ended, presence: true, length: { minimum: 2 }
  validates :title,:time_started,:time_ended, uniqueness: { scope: :day}
  def changes_status
    self.status = !self.status
    self.save
  end
end
