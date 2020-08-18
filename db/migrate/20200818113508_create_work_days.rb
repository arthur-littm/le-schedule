class CreateWorkDays < ActiveRecord::Migration[6.0]
  def change
    create_table :work_days do |t|
      t.date :date
      t.boolean :open, default: true

      t.timestamps
    end
  end
end
