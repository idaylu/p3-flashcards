class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.references :deck, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
