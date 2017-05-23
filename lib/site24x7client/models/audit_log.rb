module Site24x7client
  class AuditLog < BaseModel
    [ :resource_type, #  string  The category under which the resource falls under. 
      :modified_by, #  string  The account member who has modified the resource. 
      :remarks, #  string  Type of action performed on the resource. 
      :time, #   string  The time at which the resource has been modified. 
      :params, #   string  Additional information regarding the modification of the resource 
      :resource_name, #  string  Name of the resource as provided by the user. 
    ].each do |key|
      attribute(key)
    end

    # format = "?time=yyyy-MM-ddTHH:mm:ss%2BZZZZ"
    # example= "?time=2017-01-13T18:13:40%2B0530"
    def self.formatting(date, time, zone)
      "?time=#{date}T#{time}%2B#{zone[1..4]}"
    end

    def self.one_hour_ago
      date, time, zone = (Time.now - 1.hour).to_s.split(" ")
      formatting(date, time, zone)
    end
    
    def self.one_week_ago
      date, time, zone = (Time.now - 1.week).to_s.split(" ")
      formatting(date, time, zone)
    end

    def self.one_month_ago
      date, time, zone = (Time.now - 1.month).to_s.split(" ")
      formatting(date, time, zone)
    end

    def self.one_year_ago
      date, time, zone = (Time.now - 1.year).to_s.split(" ")
      formatting(date, time, zone)
    end
  end
end