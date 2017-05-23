module Site24x7client
  class NotificationProfileResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/notification_profiles' do
        handler(200, :ok) { |response| NotificationProfileMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/notification_profiles/:id' do
        handler(200) { |response| NotificationProfileMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/notification_profiles' do
        body { |object| NotificationProfileMapping.representation_for(:create, object) }
        handler(200) { |response, notification_profile| NotificationProfileMapping.extract_into_object(notification_profile, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/notification_profiles/:id' do
        body { |object| NotificationProfileMapping.representation_for(:create, object) }
        handler(200) { |response, notification_profile| NotificationProfileMapping.extract_into_object(notification_profile, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :delete, 'DELETE /api/notification_profiles/:id' do
        handler(200) { |response| true }
      end
    end
  end
end
