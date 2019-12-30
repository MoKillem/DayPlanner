class ChangeDateFromDays < ActiveRecord::Migration[6.0]
  def change
    change_table :days do |t|
      t.remove :day
      t.date :day
    end
  end
end
