class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.date :starts_on
      t.date :ends_on
      t.float :discount_percentage

      t.timestamps
    end
  end
end
