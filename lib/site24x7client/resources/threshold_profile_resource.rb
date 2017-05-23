module Site24x7client
  class ThresholdProfileResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do
      action :all, 'GET /api/threshold_profiles' do
        handler(200, :ok) { |response| ThresholdProfileMapping.extract_collection(response.body, :read) }
      end

      action :find, 'GET /api/threshold_profiles/:id' do
        handler(200) { |response| ThresholdProfileMapping.extract_single(response.body, :read) }
      end

      action :create, 'POST /api/threshold_profiles' do
        body { |object| ThresholdProfileMapping.representation_for(:create, object) }
        handler(200) { |response, threshold_profile| ThresholdProfileMapping.extract_into_object(
          threshold_profile, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :update, 'PUT /api/threshold_profiles/:id' do
        body { |object| ThresholdProfileMapping.representation_for(:create, object) }
        handler(200) { |response, threshold_profile| ThresholdProfileMapping.extract_into_object(
          threshold_profile, response.body, :read) }
        handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
      end

      action :delete, 'DELETE /api/threshold_profiles/:id' do
        handler(200) { |response| true }
      end
    end
  end
end
