class CreateAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.string :topic
      t.boolean :is_complete

      t.timestamps
    end
  end
end
