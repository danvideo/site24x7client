module Site24x7client
  class Action < BaseModel
    [ :action_name,              # string  Mandatory Display name for the Action.
      :action_url,               # string  Mandatory URL to be invoked for action execution.
      :action_timeout,           # int Mandatory Timeout for connecting to URL. Range 1 - 45.
      :action_type,              # int Mandatory Action Type
      :action_method,            # string  Mandatory HTTP Method to access the action url. Only POST and GET are supported.
      :suppress_alert,           # boolean Suppress alert when dependent monitor is down
      :send_incident_parameters, # boolean Configuration to send incident parameters while executing the action.
      :send_custom_parameters,   # boolean Configuration to send custom parameters while executing the action.
      :custom_parameters,        # boolean Mandatory, if send_custom_parameters is set as true. 
                                 # Custom parameters to be passed while accessing the action url.
      :send_in_json_format,      # boolean Optional, use only if HTTP Method chosen is GET.  
                                 # Configuration to enable json format for post parameters.
      :requires_authentication,  # boolean Enables authentication for the action url.
      :username,                 # string  Mandatory, if requires_authentication is set as true. Authentication username.
      :password,                 # string  Mandatory, if requires_authentication is set as true. Authentication password.
      :user_agent                # string  User Agent to be used while monitoring the website.
    ].each do |key|
      attribute(key)
    end
  end
end
