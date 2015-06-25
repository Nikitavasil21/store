Spree::Order.class_eval do
  validate :skype

  def associate_user!(user, override_email = true, override_skype = true)
    self.user           = user
    self.email          = user.email if override_email
    self.skype          = user.skype if override_skype
    self.created_by   ||= user
    self.bill_address ||= user.bill_address
    self.ship_address ||= user.ship_address
    
    changes = slice(:user_id, :email, :skype, :created_by_id, :bill_address_id, :ship_address_id)
    self.class.unscoped.where(id: self).update_all(changes)
  end
