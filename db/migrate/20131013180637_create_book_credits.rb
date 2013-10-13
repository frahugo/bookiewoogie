class CreateBookCredits < ActiveRecord::Migration
  def change
    create_table :book_credits do |t|
      t.belongs_to :book, index: true
      t.belongs_to :author, index: true

      t.timestamps
    end
  end
end
