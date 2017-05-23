require "faraday"

module Site24x7client
  class Client
    SITE24X7_CLIENT = "https://www.site24x7.com"

    attr_reader :access_token

    def initialize(options = {})
      @access_token = ENV["SITE24X7_TOKEN"] || options.fetch(:access_token)
    end

    def connection
      @faraday ||= Faraday.new connection_options do |req|
        req.adapter :net_http
      end
    end

    def self.resources
      {
        # actions: ActionResource,
        audit_logs: AuditLogResource,
        current_status: CurrentStatusResource,
        location_profiles: LocationProfileResource,
        monitor_groups: MonitorGroupResource,
        monitors: MonitorResource,
        notification_profiles: NotificationProfileResource,
        threshold_profiles: ThresholdProfileResource,
        user_groups: UserGroupResource,
        users: UserResource,
      }
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    def resources
      @resources ||= {}
    end

    def connection_options
      {
        url: SITE24X7_CLIENT,
        headers: {
          content_type:  "application/json; charset=UTF-8",
          accept:        "application/json; version=2.0",
          authorization: "Zoho-authtoken #{@access_token}",
          user_agent: "Firefox"
        }
      }
    end
  end
end