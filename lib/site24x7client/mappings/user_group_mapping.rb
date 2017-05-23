module Site24x7client
  class UserGroupMapping
    include Kartograph::DSL

    kartograph do
      mapping UserGroup
      root_key plural: "data", singular: "data", scopes: [:read]

      property :display_name, scopes: [:read]
      property :users, scopes: [:read]
      property :user_group_id, scopes: [:read]
    end
  end
end
