# this is a mess. mostly a TODO page

user = Site24x7client::User.new(
          display_name: "TEST-name",
          email_address: "example@example.com",
          user_role: 1,
          notify_medium: [1],
          user_groups: ["102055000000864007"],
          alert_settings: {
            "email_format"=>0, 
            "dont_alert_on_days"=>[0, 1, 2, 3, 4, 5, 6],
            "alerting_period":{
              "start_time":"4:30",
              "end_time":"20:15"
            },
            "down"=>[1], 
            "trouble"=>[1], 
            "up"=>[1]
          }
        )

# the hash keys and values should == the User.attributes
as_hash   = Site24x7client::UserMapping.hash_for(:create, user)
as_string = Site24x7client::UserMapping.representation_for(:create, user)
puts as_string

json = Site24x7client::UserMapping.representation_for(:create, user)
stub_do_api(path, :post).with(body: json).to_return(body: api_fixture('droplets/create'), status: 202)
created_droplet = resource.create(user)
expect(created_droplet).to be user



conn = Faraday.new(:url => "https://www.site24x7.com") do |faraday|
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end
conn.post do |req|
  req.url "api/users"
  req.headers["Content-Type"] = "application/json"
  req.body = as_string
end