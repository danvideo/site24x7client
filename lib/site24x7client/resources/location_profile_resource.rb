module Site24x7client
  class LocationProfileResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/location_profiles' do
        handler(200, :ok) { |response| LocationProfileMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/location_profiles/:id' do
        handler(200) { |response| LocationProfileMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/location_profiles' do
        body { |object| LocationProfileMapping.representation_for(:create, object) }
        handler(200) { |response, location_profile| LocationProfileMapping.extract_into_object(location_profile, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/location_profiles' do
        body { |object| LocationProfileMapping.representation_for(:create, object) }
        handler(200) { |response, location_profile| LocationProfileMapping.extract_into_object(location_profile, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :delete, 'DELETE /api/location_profiles/:id' do
        handler(200) { |response| true }
      end
    end
  end
end
