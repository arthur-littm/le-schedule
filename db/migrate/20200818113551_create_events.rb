class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :work_day, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
