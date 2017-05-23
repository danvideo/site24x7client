module Site24x7client
  class UserMapping
    include Kartograph::DSL

    kartograph do
      mapping User
      root_key plural: "data", singular: "data", scopes: [:read]

      property :user_id, scopes: [:read]
      property :user_role, scopes: [:read, :create, :update]
      property :mobile_settings, scopes: [:read, :create, :update]
      property :user_groups, scopes: [:read, :create, :update]
      property :alert_settings, scopes: [:read, :create, :update]
      property :display_name, scopes: [:read, :create, :update]
      property :email_address, scopes: [:read, :create, :update]
      property :notify_medium, scopes: [:read, :create, :update]
      property :twitter_settings, scopes: [:read]
      property :im_settings, scopes: [:read]
      property :selection_type, scopes: [:read]
      property :image_present, scopes: [:read] 
      property :is_account_contact, scopes: [:read] 
      property :is_contact, scopes: [:read] 
      property :is_invited, scopes: [:read] 
      property :zuid, scopes: [:read]
      property :is_edit_allowed, scopes: [:read]    
    end
  end
end