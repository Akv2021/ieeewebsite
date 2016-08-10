class CreateNavigations < ActiveRecord::Migration[5.0]
  def change
    create_table :navigations do |t|
      t.string :name
      t.integer :pos
      t.text :url

      t.timestamps
    end
  end
end
