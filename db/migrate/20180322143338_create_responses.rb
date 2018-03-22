class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :test, index: true, foreign_key: true
      t.string :name
      t.string :answer

      t.timestamps null: false
    end
  end
end
