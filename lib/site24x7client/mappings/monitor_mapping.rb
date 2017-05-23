module Site24x7client
  class MonitorMapping
    include Kartograph::DSL

    kartograph do
      mapping Monitor
      root_key plural: "data", singular: "data", scopes: [:read]

      property :monitor_id, scopes: [:read, :update]
      property :display_name, scopes: [:read, :update, :create] 
      property :type, scopes: [:read, :update, :create] 
      property :website, scopes: [:read, :update, :create] 
      property :check_frequency, scopes: [:read, :update, :create] 
      property :timeout, scopes: [:read, :update, :create] 
      property :location_profile_id, scopes: [:read, :update, :create] 
      property :notification_profile_id, scopes: [:read, :update, :create] 
      property :threshold_profile_id, scopes: [:read, :update, :create] 
      property :user_group_ids, scopes: [:read, :update, :create] 
      property :http_method, scopes: [:read, :update, :create] 
      property :use_ipv6, scopes: [:read, :update, :create] 
      # property :request_content_type, scopes: [:read] 
      # property :request_param, scopes: [:read] 
      # property :auth_user, scopes: [:read] 
      # property :auth_pass, scopes: [:read] 
      property :matching_keyword, scopes: [:read, :update, :create] 
      # property :unmatching_keyword, scopes: [:read] 
      # property :match_regex, scopes: [:read] 
      # property :user_agent, scopes: [:read] 
      # property :custom_headers, scopes: [:read] 
      property :monitor_groups, scopes: [:read, :update, :create] 
      # property :dependency_resource_id, scopes: [:read] 
      # property :action_ids, scopes: [:read] 
      # property :use_name_server, scopes: [:read] 
      # property :notify_to_pager_duty, scopes: [:read] 
      property :up_status_codes, scopes: [:read, :update, :create] 
    end
  end
end
