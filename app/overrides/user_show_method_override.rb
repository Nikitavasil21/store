Deface::Override.new( virtual_path:  "spree/users/show",
                      insert_bottom: "dl#user-info",
                      partial:       "spree/users/add_skype_fields_in_show",
                      name:          "add_skype_fields")