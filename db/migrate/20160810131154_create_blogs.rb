class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.text :imageurl
      t.text :content
      t.string :title
      t.datetime :creation
      t.datetime :update

      t.timestamps
    end
  end
end
