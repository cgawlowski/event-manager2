class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, limit: 32
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :published

      t.timestamps
    end
  end
end
