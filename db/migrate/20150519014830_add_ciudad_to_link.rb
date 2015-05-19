class AddCiudadToLink < ActiveRecord::Migration
  def change
    add_column :links, :ciudad, :text
  end
end
