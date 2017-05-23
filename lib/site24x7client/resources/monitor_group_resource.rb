module Site24x7client
  class MonitorGroupResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/monitor_groups' do
        handler(200, :ok) { |response| MonitorGroupMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/monitor_groups/:id' do
        handler(200) { |response| MonitorGroupMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/monitor_groups' do
        body { |object| MonitorGroupMapping.representation_for(:create, object) }
        handler(200) { |response, monitor| MonitorGroupMapping.extract_into_object(monitor, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/monitor_groups/:id' do
        body { |object| MonitorGroupMapping.representation_for(:create, object) }
        handler(200) { |response, monitor| MonitorGroupMapping.extract_into_object(monitor, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :delete, 'DELETE /api/monitor_groups/:id' do
        handler(200) { |response| true }
      end
    end
  end
end
