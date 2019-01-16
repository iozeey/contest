class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
      t.string :name
      t.text :instructions
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
