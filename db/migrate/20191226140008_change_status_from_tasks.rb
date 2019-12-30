class ChangeStatusFromTasks < ActiveRecord::Migration[6.0]
  def change
    change_table :tasks do |t|
      t.remove :status
      t.boolean :status , default: false
    end
  end
end
