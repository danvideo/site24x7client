module Site24x7client
  class NotificationProfile < BaseModel
    [
      :profile_name,                   # string  Mandatory Display name for the notification profile.
      :rca_needed,                     # boolean Mandatory Settings to send root cause analysis when monitor goes down.
      :notify_after_executing_actions, # boolean Mandatory Settings to downtime only after executing configured monitor actions.
      :downtime_notification_delay,    # array Configuration for delayed notification
      :persistent_notification,        # int Settings to receive persistent notification after number of errors.
      :escalation_user_group_id,       # string  User group for downtime escalation.
      :escalation_wait_time,           # int Mandatory, if user group is added for escalation. 
                                       # Downtime duration for escalation in mins
      :template_id                     # string  Email template for notification
    ].each do |key|
      attribute(key)
    end
  end
end
