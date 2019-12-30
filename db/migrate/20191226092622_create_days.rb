class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.time :day
      t.integer :score

      t.timestamps
    end
  end
end
