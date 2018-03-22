class AddAnswerToTest < ActiveRecord::Migration
  def change
    add_column :tests, :answer, :string
  end
end
