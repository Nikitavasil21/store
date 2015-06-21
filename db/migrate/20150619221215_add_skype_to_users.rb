class AddSkypeToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :skype, :integer
    add_index :spree_users, :skype
  end
end
