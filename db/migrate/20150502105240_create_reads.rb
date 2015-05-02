class CreateReads < ActiveRecord::Migration
  def change
    create_table :reads do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :reading

      t.timestamps null: false
    end
  end
end
