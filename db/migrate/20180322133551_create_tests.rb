class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.text :question
      t.string :opt1_type
      t.string :opt1_words
      t.string :opt2_type
      t.string :opt2_words
      t.string :opt3_type
      t.string :opt3_words
      t.string :opt4_type
      t.string :opt4_words

      t.timestamps null: false
    end
  end
end
