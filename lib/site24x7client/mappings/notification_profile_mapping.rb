module Site24x7client
  class NotificationProfileMapping
    include Kartograph::DSL

    kartograph do
      mapping NotificationProfile
      root_key plural: "data", singular: "data", scopes: [:read]

      property :profile_name, scopes: [:read]                
      property :rca_needed, scopes: [:read]                    
      property :notify_after_executing_actions, scopes: [:read]
      property :downtime_notification_delay, scopes: [:read]   
      property :persistent_notification, scopes: [:read]       
      property :escalation_user_group_id, scopes: [:read]      
      property :escalation_wait_time, scopes: [:read]                                          
      property :template_id, scopes: [:read]
    end
  end
end
