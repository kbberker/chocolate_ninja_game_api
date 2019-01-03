class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :points
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
