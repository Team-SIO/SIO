class AddFavReferencesToFavs < ActiveRecord::Migration[5.2]
  def change
    add_reference :favs, :item, foreign_key: true
  end
end
