class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.references :work_day, null: false, foreign_key: true
      t.integer :role
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
