module Site24x7client
  class AuditLogMapping
    include Kartograph::DSL

    kartograph do
      mapping AuditLog
      root_key plural: 'data', singular: 'data', scopes: [:read]
 
      property :resource_type, scopes: [:read]
      property :modified_by, scopes: [:read]
      property :remarks, scopes: [:read]
      property :time, scopes: [:read]
      property :params, scopes: [:read]
      property :resource_name, scopes: [:read]
    end
  end
end
