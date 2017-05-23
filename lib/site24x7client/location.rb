module Site24x7client
  class Location
# https://www.site24x7.com/help/api/#constants

    def self.ipv6_supported_ids
      [IDS_MAPPING.keys - ONLY_IPV4_IDS]
    end

    def self.ipv6_supported_locations
      #ipv6_supported_ids.each{|k| LOCATIONS_IDS.delete(k)}
    end
    
    ONLY_IPV4_IDS = [ 13, 14, 15, 16, 22, 33, 34, 35, 41, 47, 48, 49, 55, 56, 57, 58, 62, 64]

    IDS_MAPPING = { 
      1  => "Fremont-CA - US",
      2  => "New Jersey - US",
      3  => "Singapore - SG", 
      4  => "Texas - US", 
      5  => "Amsterdam - NL", 
      6  => "London - UK",
      7  => "Dallas - US",
      8  => "Seattle - US", 
      9  => "Chicago - US", 
      10 => "Frankfurt - DE", 
      11 => "Johannesburg - ZA",
      12 => "Melbourne - AUS",
      13 => "Nagano - JP",
      14 => "Shanghai - CHN", 
      15 => "Chennai - IN", 
      16 => "Rio de Janeiro - BR",
      17 => "Stockholm - SWE",
      18 => "Paris - FR", 
      19 => "Virginia - US",
      20 => "Ireland - IE", 
      21 => "Hong Kong - HK", 
      22 => "Sao Paulo - BR", 
      23 => "Barcelona - ES", 
      24 => "Milano - IT",
      25 => "New York - US",
      26 => "Los Angeles - US", 
      27 => "Denver - US",
      28 => "Kansas - US",
      29 => "Munich - DE",
      30 => "Washington - US",
      31 => "Montreal - CA",
      32 => "Phoenix - US", 
      33 => "Mumbai - IN",
      34 => "Istanbul - TR",
      35 => "Tel Aviv - IL",
      36 => "Sydney - AUS", 
      37 => "Auckland - NZ",
      38 => "Atlanta - US", 
      39 => "Brussels - BE",
      40 => "Toronto - CA", 
      41 => "Copenhagen - DA",
      42 => "Vienna - AT",
      43 => "Zurich - CH",
      44 => "Warsaw - PL",
      45 => "Bucharest - RO", 
      46 => "Moscow - RU",
      47 => "Beijing - CHN",
      48 => "Hangzhou City - CHN",
      49 => "Qingdao City - CHN", 
      50 => "Miami - US", 
      52 => "Tokyo - JP", 
      55 => "Dubai - UAE",
      56 => "Queretaro - MEX",
      57 => "Falkenstein - DE", 
      58 => "Strasbourg - FR",
      59 => "Bengaluru - IN", 
      60 => "Edinburgh - UK", 
      61 => "Buenos Aires - ARG", 
      62 => "Seoul - SK", 
      63 => "Vancouver - CA", 
      64 => "Kuala Lumpur - MYS", 
      65 => "Detroit - US", 
      66 => "Helsinki - FI",
      67 => "Lisbon - PT",
      68 => "San Francisco - US"
    }

  end
end

