module Site24x7client
  class Monitor < BaseModel
    # NOTE: right now only using Website Monitors as default 
    # as well as main monitor (e.g. NO Web Page Analyzer Monitors)
    [
      :monitor_id, # string  Mandatory Unique ID of the monitor. You can find monitor_id using the monitor list api
      :display_name, # string Mandatory Name for the monitor
      :type, # string Mandatory URL
      :website, # string Mandatory Website address to monitor.
      :check_frequency, # int Mandatory Check interval for monitoring.
      :timeout, # int Mandatory Timeout for connecting to website. Range 1 - 45.
      :location_profile_id, # string  Mandatory Location Profile to be associated with the monitor. 
      # Create new location profile or find your preferred location profile’s ID.
      :notification_profile_id, # string  Mandatory Notification profile to be associated with the monitor. 
      # Create new notification profile or find your preferred notification profile’s ID.
      :threshold_profile_id, # string  Mandatory Threshold profile to be associated with the monitor. 
      # Create new threshold profile or find your preferred threshold profile’s ID.
      :user_group_ids, # array Mandatory User group to be notified on down. 
      # Create new user group or find your preferred user group’s ID.
      :http_method, # string  Mandatory HTTP Method to be used for 
      # accessing the website. PUT, PATCH and DELETE are not supported
      :use_ipv6, # boolean Select IPv6 for monitoring the websites hosted with IPv6 address. 
      # If you choose non IPv6 supported locations, monitoring will happen through IPv4.
      # :request_content_type, # string  Provide content type for request params.
      # :request_param, # string  Provide parameters to be passed while accessing the website.
      # :auth_user, # string  Authentication user name to access the website.
      # :auth_pass, # string  Authentication password to access the website.
      :matching_keyword, # json  Check for the keyword in the website response. JSON Format:
      # :unmatching_keyword, # json  Check for non existence of keyword in the website response. JSON Format: 
      # :match_regex, # json  Match the regular expression in the website response. JSON Format:
      # :match_case, # boolean Perform case sensitive keyword search or not.
      # :user_agent, # string  User Agent to be used while monitoring the website.
      # :custom_headers, # JSON array  Header name and value in a string array.  JSON Format: 
      :monitor_groups, # array Group IDs to associate monitor. 
      # Create new monitor group or find your preferred monitor group’s ID.
      # :dependency_resource_id, # string  Suppress alert when dependent monitor is down
      # :action_ids, # JSON array  Action to be performed on monitor status changes. JSON Format:
      # :use_name_server, # boolean Resolve the IP address using Domain Name Server.
      # :notify_to_pager_duty, # boolean Notify via Pager Duty.
      :up_status_codes # string  Provide a comma-separated list of HTTP status 
      # codes that indicate a successful response. You can specify individual 
      # status codes, as well as ranges separated with a colon.
    ].each do |key|
      attribute(key)
    end

    # only works on Standard Web Monitors (URLs, not Advanced or DNS)
    def id_and_url
      return "" unless @type == "URL" && @monitor_id && @website
      return { @monitor_id => @website }
    end
  end
end

# matching_keyword = 
#   {value: "$value", severity: "$alert_type_constant"}
# unmatching_keyword = 
#   {value: "$value", severity: "$alert_type_constant"}
# match_regex = 
#   {value: "$value", severity: "$alert_type_constant"}
# custom_headers = 
#   {name: "$Header Name", value: "$Header Value"}
# action_ids = 
#   {action_id: "$action_id", alert_type: $action_rule_constants}. Create new action or find your preferred action’s ID.



# New Monitor Template (and returned defaults)
    # body = {
    #    "display_name"=>"NEW-MONITOR-FROM-API-TEST",
    #    "type"=>"URL",
    #    "website"=>"http://www.google.com",
    #    "check_frequency"=>1,
    #    "timeout"=>10,
    #    "http_method"=>"P",
    #    "location_profile_id"=>"123412341234123412",
    #    "notification_profile_id"=>"123412341234123413",
    #    "threshold_profile_id"=>"123412341234123414",
    #    "user_group_ids"=>["123412341234123415"],
    #    "use_ipv6"=>true,
    #    "request_content_type"=>"F",
    #    "request_param"=>"param=value",
    #    "auth_user"=>"username",
    #    "auth_pass"=>"password",
    #    "matching_keyword"=>{"value"=>"Title", "severity"=>0},
    #    "unmatching_keyword"=>{"value"=>"Exception", "severity"=>2},
    #    "match_regex"=>{"value"=>"^reg*", "severity"=>0},
    #    "match_case"=>true,
    #    "user_agent"=>"Mozilla Firefox",
    #    "custom_headers"=>[{"name"=>"Accept-Encoding", "value"=>"gzip"}, {"name"=>"Cache-Control", "value"=>"nocache"}],
    #    "monitor_groups"=>["123412341234123416", "123412341234123417"],
    #    "action_ids"=>[{"action_id"=>"123412341234123418", "alert_type"=>20}],
    #    "use_name_server"=>false,
    #    "notify_to_pager_duty"=>true,
    #    "up_status_codes"=>"200",
    #    "dependency_resource_id"=>"123412341234123419"
    #  }

