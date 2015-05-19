class AddCountryCodeToLink < ActiveRecord::Migration
  def change
    add_column :links, :country_code, :string
    add_column :links, :state_code, :string
  end
end
