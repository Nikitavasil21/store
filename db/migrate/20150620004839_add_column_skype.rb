class AddColumnSkype < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :skype, :string
    add_index :spree_addresses, :skype
  end
end
