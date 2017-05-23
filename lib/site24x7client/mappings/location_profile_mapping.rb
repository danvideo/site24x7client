module Site24x7client
  class LocationProfileMapping
    include Kartograph::DSL

    kartograph do
      mapping LocationProfile
      root_key plural: "data", singular: "data", scopes: [:read]

      property :profile_name, scopes: [:read]
      property :primary_location, scopes: [:read]
      property :secondary_locations, scopes: [:read]
      property :profile_id, scopes: [:read]
      property :profile_name, scopes: [:read]
      property :primary_location, scopes: [:read]
      property :secondary_locations, scopes: [:read]
    end
  end
end
