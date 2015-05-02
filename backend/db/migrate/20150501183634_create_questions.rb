class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.string :title
      t.text :content
      t.integer :q_votes, default: 0

      t.timestamps
    end
  end
end
