class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :bookType,:null => false, :default => "Unknown"
      t.string :authorFirst
      t.string :authorLast
      t.string :title
      t.string :genre, :null => false, :default => "Unknown"
      t.decimal :year
      t.string :isbn

      t.timestamps null: false
    end
  end
end
