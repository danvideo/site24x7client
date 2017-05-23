module Site24x7client
  class ThresholdProfile < BaseModel
    # NOTE: right now only using Website Monitors as default 
    # as well as main monitor (e.g. NO Web Page Analyzer Monitors)
    [
      :type,                     # string  Mandatory URL
      :profile_name,             # string  Mandatory Name of the profile
      :down_location_threshold,  # int Mandatory Triggers alert when the monitor is down 
                                 # from configured number of locations. Downtime Rules Constants
      :website_content_modified, # boolean Triggers alert when Website content is modified.
      :website_content_changes,  # json Triggers alert when Website content changes by configured percentage.
                                 # JSON Format: below
      :response_time_threshold,  # json  Response time threshold for primary and secondary monitoring location. 
                                 # JSON Format: below
    ].each do |key|
      attribute(key)
    end
  end
end

# response_time_threshold = 
#   {
#     "primary": {
#       "trouble": $response_time_for_primary_location,
#       "polls_check": $poll_check_value,
#       "strategy": $strategy
#     }
#     "secondary": {
#       "trouble": $response_time_for_secondary_locations,
#       "polls_check": $poll_check_value,
#       "strategy": $strategy
#     }
#   }

# website_content_changes = 
#   {
#     "trouble": $website_content_change_percentage
#   }