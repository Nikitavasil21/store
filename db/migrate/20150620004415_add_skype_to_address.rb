class AddSkypeToAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :skype, :string
    add_index :spree_addresses, :skype
  end

  def change
    remove_column :spree_orders, :skype
 end
end
