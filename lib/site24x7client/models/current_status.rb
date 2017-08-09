module Site24x7client
  class CurrentStatus < BaseModel
    [
      :monitors,
      :monitor_groups
    ].each do |key|
      attribute(key)
    end

    # WEB MONITOR STATUSES 
    # URL + Advanced (not DNS)
    def web
      @monitors.map{|x| MonitorStatus.new(x)}
    end

    def url
      web.select{|x| x.monitor_type == "URL"}
    end

    def advanced
      web.select{|x| x.monitor_type == "REALBROWSER"}
    end

    def url_locations
      url.map{|x| x.location_status }.flatten
    end

    # MONITOR GROUPS STATUSES
    # DNS and others (not URL or Advanced) 
    def to_groups 
      @monitor_groups.map{|x| MonitorGroup.new(x)}
    end

    def groups
      to_groups.map{|g| g.monitors.map{|x| MonitorStatus.new(x)}}.flatten
    end

    def group_locations
      # avoid an inproperly setup monitor which has no location data breaking the map
      groups.select{|x| !x.locations.nil? }.
      map{|x| x.location_status }.
      flatten
    end

    # ALL MONITORS OR ALL LOCATIONS (WEB + OTHERS LIKE DNS)
    def all_monitors
      web + groups
    end

    def all_locations
      url_locations + group_locations
    end
  end
end
