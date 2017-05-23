module Site24x7client
  class User < BaseModel
    [
      :user_id,          # generated
      :display_name,     # string  Mandatory Name of the User.
      :email_address,    # string  Mandatory Email address of the user.
      :user_role,        # string  Mandatory Role of the user for accessing Site24x7.  
                         # Role will be updated only after the user accepts the invitation
      :notify_medium,    # array Mandatory Notify medium to receive alerts.
      :alert_settings,   # json  Mandatory Settings for receiving. JSON Format: below
      :mobile_settings,  # json  Phone number configurations to receive alerts. JSON Format: below
      :user_groups,      # array Group to be associated for the user for receiving alerts. 
      :selection_type,   # int Default value is 0. Resource type associated to this user. Monitors not supported.
      :twitter_settings, # json  Setting to receive alerts via Twitter.
      :im_settings,      # json  Settings to receive alerts via IM. JSON Format: below
      :image_present, 
      :is_account_contact, 
      :is_contact, 
      :is_invited,
      :zuid,
      :is_edit_allowed
    ].each do |key, value|
      attribute(key)
    end
  end
end

# alert_settings =
#   {
#     email_format: $email_format,
#     dont_alert_on_days: [$day_constants],
#     alerting_period: {
#       start_time: "$hh: mm",
#       end_time: "$hh: mm"
#     },
#     down: [$alerting_mode_constants],
#     trouble: [$alerting_mode_constants],
#     up: [$alerting_mode_constants]
#   }

# mobile_settings =
#   {
#     country_code: $country_code,
#     mobile_number: $mobile_number,
#     sms_provider_id: $sms_providers,
#     call_provider_id: $voice_call_provider
#   }

# im_settings = 
#   {
#     im_username:"$im_username", 
#     im_status:true/false,
#     chat_selection: $im_providers
#   }
