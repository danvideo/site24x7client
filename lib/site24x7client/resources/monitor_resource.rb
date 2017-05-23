module Site24x7client
  class MonitorResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/monitors' do
        handler(200, :ok) { |response| MonitorMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/monitors/:id' do
        handler(200) { |response| MonitorMapping.extract_single(response.body, :read) }
      end

      action :find_by_name, 'GET /api/monitors/name/:name' do
        handler(200) { |response| MonitorMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/monitors' do
        body { |object| MonitorMapping.representation_for(:create, object) }
        handler(201) { |response, monitor| MonitorMapping.extract_into_object(monitor, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/monitors/:id' do
        body { |object| MonitorMapping.representation_for(:update, object) }
        handler(200) { |response, monitor| MonitorMapping.extract_into_object(monitor, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :delete, 'DELETE /api/monitors/:id' do
        handler(200) { |response| true }
      end

      action :delete_by_name, 'DELETE /api/monitors/name/:name' do
        handler(200) { |response| true }
      end
      
      # for some reason is encoding :monitor_ids, maybe because not after slash "/"
      # so in client pass (url_with_ids: "monitors?monitor_ids=#{monitor_ids}")
      action :delete_multiple, 'DELETE /api/:url_with_ids' do
        handler(200) { |response| true }
      end

      action :activate, 'PUT /api/monitors/activate/:id' do
        handler(200) { |response| true }
      end

      action :suspend, 'PUT /api/monitors/suspend/:id' do
        handler(200) { |response| true }
      end

    end
  end
end
