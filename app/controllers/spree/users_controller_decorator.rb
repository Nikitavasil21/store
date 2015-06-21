Spree::UsersController.class_eval do
  def show
    @orders = current_spree_user.orders.where(skype: current_spree_user.skype)
  end
end