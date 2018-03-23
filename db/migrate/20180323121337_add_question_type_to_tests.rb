class AddQuestionTypeToTests < ActiveRecord::Migration
  def change
    add_column :tests, :question_type, :string
  end
end
