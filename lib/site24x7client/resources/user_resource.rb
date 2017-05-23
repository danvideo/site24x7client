module Site24x7client
  class UserResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/users' do
        handler(200, :ok) { |response| UserMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/users/:id' do
        handler(200) { |response| UserMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/users' do
        body { |object| UserMapping.representation_for(:create, object) }
        handler(200) { |response, user| UserMapping.extract_into_object(user, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/users/:id' do
        body { |object| UserMapping.representation_for(:update, object) }
        handler(200) { |response, user| UserMapping.extract_into_object(user, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      # REALIZE THAT `user_role: 1` is Super Administrator and can't be deleted
      action :delete, 'DELETE /api/users/:id' do
        handler(200) { |response| true }
      end
    end
  end
end
