class RemoveCategoryFromAgenda < ActiveRecord::Migration[5.1]
  def change
    remove_reference :agendas, :category, foreign_key: true
  end
end
