class CreateAgendacategories < ActiveRecord::Migration[5.1]
  def change
    create_table :agendacategories do |t|
      t.string :category

      t.timestamps
    end
  end
end
