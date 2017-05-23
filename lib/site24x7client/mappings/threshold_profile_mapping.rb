module Site24x7client
  class ThresholdProfileMapping
    include Kartograph::DSL

    kartograph do
      mapping ThresholdProfile
      root_key plural: "data", singular: "data", scopes: [:read]

      property :type, scopes: [:read]
      property :profile_name, scopes: [:read]
      property :down_location_threshold, scopes: [:read]
      property :website_content_modified, scopes: [:read]
      property :website_content_changes, scopes: [:read]
      property :response_time_threshold, scopes: [:read]
    end
  end
end
