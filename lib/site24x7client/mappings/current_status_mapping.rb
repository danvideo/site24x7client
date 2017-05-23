module Site24x7client
  class CurrentStatusMapping
    include Kartograph::DSL

    kartograph do
      mapping CurrentStatus
      root_key singular: "data", plural: "data", scopes: [:read]
      property :monitors, scopes: [:read]
      property :monitor_groups, scopes: [:read]
    end
  end
end


# NOTE: example of json to parse the above code... doc["data"] key is taken
# care of in CurrentStatusResource

#{
#   "code": 0,
#   "message": "success",
#   "data": {
#     "monitors": [{
#       "name": "TYPE_A1",
#       "status": 1
#     }, {
#       "name": "TYPE_A2",
#       "status": 1
#     }],
#     "monitor_groups": [{
#       "status": 1,
#       "monitors": [{
#         "name": "TYPE_B1",
#         "status": 1
#       }, {
#         "name": "TYPE_B2",
#         "status": 1
#       }]
#     }]
#   }
# }
