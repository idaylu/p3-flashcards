class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.references :deck, index: true

      t.timestamps
    end
  end
end
