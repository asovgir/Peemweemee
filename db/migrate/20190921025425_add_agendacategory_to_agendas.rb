class AddAgendacategoryToAgendas < ActiveRecord::Migration[5.1]
  def change
    add_reference :agendas, :agendacategory, foreign_key: true
  end
end
