# module Site24x7client
#   class ActionResource < ResourceKit::Resource
#     include ErrorHandlingResourcable

#     resources do
#       action :all, 'GET /api/actions' do
#         handler(200, :ok) { |response| ActionMapping.extract_collection(response.body, :read) }
#       end

#       action :find, 'GET /api/actions/:id' do
#         handler(200) { |response| ActionMapping.extract_single(response.body, :read) }
#       end

#       action :create, 'POST /api/actions' do
#         body { |object| ActionMapping.representation_for(:create, object) }
#         handler(200) { |response, action| ActionMapping.extract_into_object(action, response.body, :read) }
#         handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
#       end

#       action :update, 'PUT /api/actions/:id' do
#         body { |object| ActionMapping.representation_for(:create, object) }
#         handler(200) { |response, action| ActionMapping.extract_into_object(action, response.body, :read) }
#         handler(422) { |response| ErrorMapping.fail_with(FailedCreate, response.body) }
#       end

#       action :delete, 'DELETE /api/actions/:id' do
#         handler(200) { |response| true }
#       end
#     end
#   end
# end