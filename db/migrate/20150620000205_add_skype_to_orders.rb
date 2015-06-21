class AddSkypeToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :skype, :string
    add_index :spree_orders, :skype
  end
end
