class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :title
      t.boolean :status
      t.time :time_started
      t.time :time_ended
      t.references :day, null: false, foreign_key: true
      t.timestamps
    end
  end
end
