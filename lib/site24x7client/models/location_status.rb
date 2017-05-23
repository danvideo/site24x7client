module Site24x7client
  class LocationStatus < BaseModel
    [
      :name,
      :monitor_id,
      :location_name,
      :primary_location, # true or not present in response
      :status,
      :last_polled_time,
      :attribute_value
    ].each do |key|
      attribute(key)
    end
  end
end

# JSON format:
# widgets = {response_report:"$response_report_link", availability_report:"$availability_report_link"}
# plugin_info = {PLUGIN_NAME: "$plugin_name", CONFXML_KEY: "$confxml_key", LOCID:"$location_id", VERSION:"$version", HEARTBEAT:true/false}
# parent_info = {serverid: "$server_id", url: "$confxml_key", name:"$location_id", type:"$monitor_type"}
# locations = {status:"$status", last_polled_time:"$last_polled_time", attribute_value:"$attribute_value", location_name:"$location_name"}
