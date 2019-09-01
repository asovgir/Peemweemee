class CreateBetIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :bet_ideas do |t|
      t.string :idea

      t.timestamps
    end
  end
end
