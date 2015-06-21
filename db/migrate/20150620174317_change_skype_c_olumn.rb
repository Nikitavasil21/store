class ChangeSkypeCOlumn < ActiveRecord::Migration
  def change
    change_column :spree_users, :skype, :string
  end
end
