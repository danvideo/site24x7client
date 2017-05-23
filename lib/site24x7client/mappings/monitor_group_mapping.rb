module Site24x7client
  class MonitorGroupMapping
    include Kartograph::DSL

    kartograph do
      mapping MonitorGroup
      root_key plural: "data", singular: "data", scopes: [:read]

      property :group_id, scopes: [:read]
      property :display_name, scopes: [:read]
      property :description, scopes: [:read]
      property :monitors, scopes: [:read]
      property :health_threshold_count, scopes: [:read]
      property :dependency_resource_id, scopes: [:read]
      property :suppress_alert, scopes: [:read]
    end
  end
end
