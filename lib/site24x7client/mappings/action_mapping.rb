module Site24x7client
  class ActionMapping
    include Kartograph::DSL

    kartograph do
      mapping Action
      root_key plural: 'data', singular: 'data', scopes: [:read]
 
      property :action_name, scopes: [:read]
      property :action_url, scopes: [:read]
      property :action_timeout, scopes: [:read]
      property :action_type, scopes: [:read]
      property :action_method, scopes: [:read]
      property :suppress_alert, scopes: [:read]
      property :send_incident_parameters, scopes: [:read]
      property :send_custom_parameters, scopes: [:read]
      property :custom_parameters, scopes: [:read]
      property :send_in_json_format, scopes: [:read]
      property :requires_authentication, scopes: [:read]
      property :username, scopes: [:read]
      property :password, scopes: [:read]
      property :user_agent, scopes: [:read]
    end
  end
end
