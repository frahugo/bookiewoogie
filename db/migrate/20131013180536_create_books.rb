class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :cover_image
      t.decimal :price

      t.timestamps
    end
  end
end
