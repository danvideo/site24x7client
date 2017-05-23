module Site24x7client
  class AuditLogResource < ResourceKit::Resource
    include ErrorHandlingResourcable
         
    resources do
      action :all, "GET /api/audit_logs:params" do
        handler(200, :ok) { |response| AuditLogMapping.extract_collection(response.body, :read) }
      end
    end
  end
end