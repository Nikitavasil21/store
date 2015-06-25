Deface::Override.new( virtual_path:  "spree/shared/_user_form",
                      insert_bottom: "fieldset#password-credentials",
                      partial:       "spree/shared/add_skype_fields",
                      name:          "add_skype_fields")