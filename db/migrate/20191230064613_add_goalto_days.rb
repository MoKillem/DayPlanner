class AddGoaltoDays < ActiveRecord::Migration[6.0]
  def change
    change_table :days do |t|
      t.string :goal , default: 'No goals'
    end
  end
end
