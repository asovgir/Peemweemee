class CreateBets < ActiveRecord::Migration[5.1]

  def change
    create_table :bets do |t|
      t.boolean :is_complete
      t.references :category, foreign_key: true
      t.string :bet_name
      t.string :bet_description
      t.references :user, foreign_key: true
      t.date :date_completed
      t.integer :betcoin_wager
      t.string :ticket_wager

      t.timestamps
    end
  end
end
