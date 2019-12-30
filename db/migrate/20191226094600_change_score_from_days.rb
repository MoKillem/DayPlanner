class ChangeScoreFromDays < ActiveRecord::Migration[6.0]
  def change
    change_table :days do |t|
      t.remove :score
      t.integer :score , default: 0
    end

  end
end
