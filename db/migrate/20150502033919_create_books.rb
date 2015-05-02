class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :bookType
      t.string :authorFirst
      t.string :authorLast
      t.string :title
      t.string :genre
      t.decimal :year
      t.decimal :isbn

      t.timestamps null: false
    end
  end
end
