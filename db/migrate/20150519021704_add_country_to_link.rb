class AddCountryToLink < ActiveRecord::Migration
  def change
    add_column :links, :country, :string
  end
end
