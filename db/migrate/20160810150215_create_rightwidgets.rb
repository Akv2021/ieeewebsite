class CreateRightwidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :rightwidgets do |t|
      t.text :content
      t.text :url
      t.string :title

      t.timestamps
    end
  end
end
