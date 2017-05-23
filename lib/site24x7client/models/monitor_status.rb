module Site24x7client
  class MonitorStatus < BaseModel
    [
      :name, # string  Name of the monitor.
      :attribute_label, # string  Name of the report attribute.
      :attribute_key, # string  API key for the report attribute.
      :attribute_value, # string  Value of the report attribute.
      :status, # int Status of a monitor.
      :last_polled_time, # string  Last polled time for monitor in ISO format.
      :monitor_id, # string  Unique ID of the monitor. Use retrieve monitor API to get the details of this monitor.
      :monitor_type, # string  Type of the monitor.
      :unit, # string Unit for the report attribute.
      :locations, # JSON array  Location based current status. JSON Format: below
      #
      # NOTE: only present for monitor_groups (not URLs)
      #
      :group_id, # string  Unique ID of the monitor group.
      :group_name, # string  Name of monitor group.
      #
      # NOTE: only present after outage:
      #
      :outage_id, # string  Unique ID of the outage.
      :downtime_millis, # string  Downtime in milliseconds.
      :down_reason, # string  Reason for which the monitor is down or in trouble.
      :duration, # string  Duration for which the monitor is down or in trouble.
    ].each do |key|
      attribute(key)
    end

    def location_status
      @locations.map do |x| 
        status = LocationStatus.new(x)
        status.monitor_id = @monitor_id
        status.name = @name
        status
      end
    end
  end
end

# => ["name",
#  "attribute_key",
#  "status",
#  "last_polled_time",
#  "locations",
#  "monitor_type",
#  "attribute_label",
#  "attribute_value",
#  "unit",
#  "monitor_id"]
