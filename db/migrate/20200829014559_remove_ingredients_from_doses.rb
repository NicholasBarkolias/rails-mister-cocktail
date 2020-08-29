class RemoveIngredientsFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_reference :doses, :ingredients, null: false, foreign_key: true
  end
end
