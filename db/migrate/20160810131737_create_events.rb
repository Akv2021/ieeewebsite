class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :name
      t.date :date
      t.time :timing
      t.text :venue
      t.text :imageurl

      t.timestamps
    end
  end
end
