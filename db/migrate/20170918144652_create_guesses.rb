class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.boolean :correct, default: false
      t.integer :total_guesses, default: 0
      t.references :card, index: true
      t.references :round, index: true

      t.timestamps
    end
  end
end
