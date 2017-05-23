require "site24x7client/version"
require "resource_kit"
require "kartograph"

module Site24x7client
  autoload :Client, "site24x7client/client"
  # Models
  # autoload :Action, "site24x7client/models/action"
  autoload :AuditLog, "site24x7client/models/audit_log"
  autoload :BaseModel, "site24x7client/models/base_model"
  autoload :CurrentStatus, "site24x7client/models/current_status"
  autoload :LocationProfile, "site24x7client/models/location_profile"
  autoload :LocationStatus, "site24x7client/models/location_status"
  autoload :Monitor, "site24x7client/models/monitor"
  autoload :MonitorGroup, "site24x7client/models/monitor_group"
  autoload :MonitorStatus, "site24x7client/models/monitor_status"
  autoload :NotificationProfile, "site24x7client/models/notification_profile"
  autoload :ThresholdProfile, "site24x7client/models/threshold_profile"
  autoload :UserGroup, "site24x7client/models/user_group"
  autoload :User, "site24x7client/models/user"

  # Resources
  # autoload :ActionResource, "site24x7client/resources/action_resource"
  autoload :AuditLogResource, "site24x7client/resources/audit_log_resource"
  autoload :CurrentStatusResource, "site24x7client/resources/current_status_resource"
  autoload :LocationProfileResource, "site24x7client/resources/location_profile_resource"
  autoload :MonitorGroupResource, "site24x7client/resources/monitor_group_resource"
  autoload :MonitorResource, "site24x7client/resources/monitor_resource"
  autoload :NotificationProfileResource, "site24x7client/resources/notification_profile_resource"
  autoload :ThresholdProfileResource, "site24x7client/resources/threshold_profile_resource"
  autoload :UserGroupResource, "site24x7client/resources/user_group_resource"
  autoload :UserResource, "site24x7client/resources/user_resource"

  # JSON Maps
  # autoload :ActionMapping, "site24x7client/mappings/action_mapping"
  autoload :AuditLogMapping, "site24x7client/mappings/audit_log_mapping"
  autoload :CurrentStatusMapping, "site24x7client/mappings/current_status_mapping"
  autoload :LocationProfileMapping, "site24x7client/mappings/location_profile_mapping"
  autoload :MonitorMapping, "site24x7client/mappings/monitor_mapping"
  autoload :MonitorGroupMapping, "site24x7client/mappings/monitor_group_mapping"
  autoload :NotificationProfileMapping, "site24x7client/mappings/notification_profile_mapping"
  autoload :ThresholdProfileMapping, "site24x7client/mappings/threshold_profile_mapping"
  autoload :UserGroupMapping, "site24x7client/mappings/user_group_mapping"
  autoload :UserMapping, "site24x7client/mappings/user_mapping"

  # ID Mappings
  autoload :Location, "site24x7client/location"
  autoload :Constants, "site24x7client/constants"

  # Utils
  autoload :ErrorHandlingResourcable, "site24x7client/error_handling_resourcable"

  # Errors
  autoload :ErrorMapping, "site24x7client/mappings/error_mapping"
  Error = Class.new(StandardError)
  FailedCreate = Class.new(Site24x7client::Error)
  FailedUpdate = Class.new(Site24x7client::Error)
end
