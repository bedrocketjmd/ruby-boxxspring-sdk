module Boxxspring
  class AnalyticsArtifact < Base

    field     :id

    field     :created_at
    field     :updated_at

    field     :type_name

    field     :at
    field     :participant_id
    field     :artifact_id 
    field     :context_uuid
    field     :session_uuid
    field     :ip_address
    field     :user_agent
    field     :device_type
    field     :device_name
    field     :operating_system_name
    field     :operating_system_version
    field     :user_agent_name
    field     :user_agent_version
    field     :geography_country
    field     :geography_locality
    field     :referer_url
    field     :referer_type
    field     :time_total
    field     :interation_time_total
    field     :interaction_count
    field     :play_count
    field     :play_time_total
    field     :play_time_maximum
    field     :play_time_maximum_percentage
    field     :pause_count
    field     :pause_time_total
    field     :wait_count
    field     :wait_time_total
    field     :ad_count
    field     :ad_time_total
    field     :visitor_uuid
    field     :referer_domain

  end
end
