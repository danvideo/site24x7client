module Site24x7client
  class CurrentStatusResource < ResourceKit::Resource
    include ErrorHandlingResourcable
    require "json"
  
    WIDGET  = "widget_required"
    APM     = "apm_required"
    DEFAULT = "#{WIDGET}=false&#{APM}=true"

    resources do
      action :all, "GET /api/current_status?#{DEFAULT}" do
        handler(200, :ok) { |response| CurrentStatusMapping.extract_single(response.body, :read) }
      end

      action :find, "GET /api/current_status/:id" do
        handler(200) { |response| CurrentStatusMapping.extract_single(response.body, :read) }
      end

      # action :urls, "GET /api/current_status/type/URL" do
      #   handler(200) { |response| CurrentStatusMapping.extract_single(response.body, :read) }
      # end

      types = Constants::MONITOR_TYPE_CONSTANTS.keys
      types.each do |type|
        action "#{type}s".downcase.to_sym, "GET /api/current_status/type/#{type}" do
          handler(200) { |response| CurrentStatusMapping.extract_single(response.body, :read) }
        end
      end
    end
  end
end

    ########################################################
    ## PARAMETER OPTIONS - Not sure whether to handle these
    ########################################################
    ## example: /api/current_status?widget_required=false&apm_required=true"
    # :widget_required,     # boolean Provides the URL for the response and availability reports. (default false)
    # :group_required,      # boolean Describes whether to send monitor groups or not.  (default true)
    # :apm_required,        # boolean Provides current status of apm monitors along with other monitors. (default false)
    # :suspended_required  # boolean Provides suspended monitors list w/current status of other monitors. (default false)