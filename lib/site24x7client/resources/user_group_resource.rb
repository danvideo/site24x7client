module Site24x7client
  class UserGroupResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/user_groups' do
        handler(200, :ok) { |response| UserGroupMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/user_groups/:id' do
        handler(200) { |response| UserGroupMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/user_groups' do
        body { |object| UserGroupMapping.representation_for(:create, object) }
        handler(200) { |response, user_group| UserGroupMapping.extract_into_object(user_group, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/user_groups/:id' do
        body { |object| UserGroupMapping.representation_for(:create, object) }
        handler(200) { |response, user_group| UserGroupMapping.extract_into_object(user_group, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :delete, 'DELETE /api/user_groups/:id' do
        handler(200) { |response| true }
      end
    end
  end
end
