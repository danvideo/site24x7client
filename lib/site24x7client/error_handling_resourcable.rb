module ErrorHandlingResourcable
  def self.included(base)
    base.send(:resources) do
      default_handler do |response|
        if (200...299).include?(response.status)
          next
        else
          raise Site24x7client::Error.new("#{response.status}: #{response.body}")
        end
      end
    end
  end
end
