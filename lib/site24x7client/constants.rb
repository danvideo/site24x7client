module Site24x7client
  class Constants

# https://www.site24x7.com/help/api/#constants
#
# NOTE: SEVERAL MORE CONSTANTS EXIST AND ARE NOT INCLUDED HERE YET, examples:
# reporting constants, dates, periods...

    NOTIFICATION_PROFILE_CONSTANTS = {
      Downtime_Delay_Constants: {  
        1 => "Notify on First Failure",
        2 => "Notify on Second Failure",
        3 => "Notify on Third Failure",
        4 => "Notify on Fourth Failure",
        5 => "Notify on Fifth Failure"
      },
      Persistent_Notification_Constant: {  
        -1 => "Do not notify Persistently",
        1  => "Notify on Every Error",
        2  => "Notify on Every Second Error",
        3  => "Notify on Every Third Error",
        4  => "Notify on Every Fourth Error",
        5  => "Notify on Every Fifth Error"
      }
    }

    ALERTING_CONSTANTS = {
      Alerting_Mode_Constants: {
        1 => "Email",
        2 => "SMS",
        3 => "Voice Call",
        4 => "IM",
        5 => "Twitter"
      },
      Alerting_Status_Constants: {
        10 => "Notify Down Status",
        20 => "Notify Trouble Status",
        30 => "Notify Up Status",
      },
      SMS_Providers: {
        1 => "Clickatell",
        2 => "BulkSMS",
        3 => "RouteSMS",
        4 => "Twilio"
      },
      Voice_Call_Provider: {
        1 => "Twilio"
      },
      IM_Providers: {
        0 => "GMail",
        1 => "Yahoo",
        2 => "MSN"
      },
      Email_Format: {  
        0 => "Text",
        1 => "HTML"
      }
    }

    ACTION_RULE_CONSTANTS = {
      0  => "Execute Action when Monitor is declared Down",
      1  => "Execute Action when Monitor is declared Up",
      2  => "Execute Action when Monitor is declared Trouble",
      -1 => "Execute Action when Monitor status changes",
      20 => "Execute Action when Attribute status changes"
    }

    # Super Admin Super Admin will have full control of the account.
    # Administrator Administrators will have write access to the most of the modules except Billing and User Access.
    # Operator  Operator will have read only access to most of the module. Will have write access to Schedule a maintenance.
    # Read Only User will have read only access to the account.
    # Billing Contact User will have access only to Billing modules like Upgrade and Renewals.
    # Spokes Person User will have read access to all the modules. User will have permission to post public comments through Dashboards.
    # Hosting Provider  User will have permission to configure Schedule maintenance.
    # No Access No access to the Site24x7 Client / API.

    # ROLES
    USER_ACCESS_CONSTANTS = {
      0  => "No Access",
      1  => "Super Administrator",
      2  => "Administrator",
      3  => "Operator",
      4  => "Billing Contact",
      5  => "Spokes Person",
      6  => "Hosting Provider",
      10 => "Read Only"
    }

    MONITOR_TYPE_CONSTANTS = {
      "URL"                => "Website Monitor",
      "HOMEPAGE"           => "Web Page Analyzer Monitor",
      "URL-SEQ"            => "Web Application Monitor",
      "REALBROWSER"        => "Web Application (Real Browser) Monitor",
      "RESTAPI"            => "Restful API Monitor",
      "SSL_CERT"           => "SSL Certificate Monitor",
      "PING"               => "Ping Monitor",
      "PORT"               => "TCP Port Monitor",
      "DNS"                => "DNS Monitor",
      "PORT-POP"           => "Pop Service Monitor",
      "PORT-SMTP"          => "SMTP Service Monitor",
      "PORT_FTP"           => "FTP Service Monitor",
      "SMTP"               => "Mail Server Round Trip Time Monitor (Send and Receive Mail)",
      "FTP"                => "FTP Round Trip Time Monitor (Upload / Download a file)",
      "SERVER"             => "Server Monitor",
      "MSEXCHANGE"         => "MS Exchange Monitor",
      "AMAZON"             => "Amazon Cloud Services Monitor",
      "EC2INSTANCE"        => "EC2 Server Instance Monitor",
      "RDSINSTANCE"        => "RDS Instance Monitor",
      "SNSTOPIC"           => "SNS Topic Monitor",
      "DYNAMODBTABLE"      => "DynamoDB Table Monitor",
      "LOADBALANCER"       => "Classic Load Balancer",
      "APPLN-LOADBALANCER" => "Application Load Balancer",
      "VCENTER"            => "VCenter Monitor",
      "VMWAREESX"          => "VMWare ESx Monitor",
      "VMWAREVM"           => "VMWare VM Monitor",
      "NETWORKDEVICE"      => "Network Device Monitor",
      "SOAP"               => "SOAP Monitor",
      "BIZTALKSERVER"      => "BizTalk Server Monitor",
      "OFFICE365"          => "Office 365"
    }


    DOWNTIME_RULES_CONSTANTS = {
      1 => "1 locations",
      2 => "2 locations",
      3 => "3 locations",
      4 => "4 locations",
      5 => "5 locations",
      6 => "6 locations",
      7 => "7 locations",
      8 => "8 locations",
      0 => "All selected locations"
    }

    THRESHOLD_STRATEGY_CONSTANTS = {
      1 => "Poll Count",
      2 => "Poll Avg",
      3 => "Time Range",
      4 => "Avg Time"
    }

    STATUS_CONSTANTS = {
      0  => "Down",
      1  => "Up",
      2  => "Trouble",
      5  => "Suspended",
      7  => "Maintenance",
      9  => "Discovery",
      10 => "Configuration Error"
    }

    UPTIME_BUTTON_TIME_PERIOD_CONSTANTS = {
      1 => "Last 24 hours",
      2 => "Last 7 Days",
      5 => "Last 30 Days"
    }

    SEVERITY_CONSTANTS = {
      0 => "Critical",
      1 => "Non-Critical"
    }

    ACTION_TYPE_CONSTANTS = {
      1 => "Invoke URL"
    }

    ALERT_TYPE_CONSTANTS = {
      0 => "Down",
      2 => "Trouble"
    }

    RESOURCE_TYPE_CONSTANTS = {
      1 => "Monitor Group",
      2 => "Monitor",
      0 => "All Monitors"
    }

    GROUP_TYPE_CONSTANTS = {
      0 => "Monitor Group",
      1 => "Subgroup"
    }

    OUTAGE_AND_ALARMS_TYPE_CONSTANTS = {
      0 => "Down",
      2 => "Trouble",
      7 => "Maintenance"
    }
  end
end
