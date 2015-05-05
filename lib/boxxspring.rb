require 'active_support'
require 'active_support/all'
require 'multi_json'

require 'boxxspring/configuration'
require 'boxxspring/response'
require 'boxxspring/request'
require 'boxxspring/parser'
require 'boxxspring/serializer'
require 'boxxspring/operation'

require 'boxxspring/resources/base'

require 'boxxspring/resources/error'
require 'boxxspring/resources/forbidden_error'
require 'boxxspring/resources/attribute_error'
require 'boxxspring/resources/missing_parameter_error'
require 'boxxspring/resources/attribute_error'
require 'boxxspring/resources/malformed_parameter_error'
require 'boxxspring/resources/not_found_error'

require 'boxxspring/resources/picture'
require 'boxxspring/resources/user_agent'
require 'boxxspring/resources/theme_environment'
require 'boxxspring/resources/theme_template'
require 'boxxspring/resources/theme'
require 'boxxspring/resources/feed'
require 'boxxspring/resources/filter'
require 'boxxspring/resources/filter_criteria'
require 'boxxspring/resources/card'
require 'boxxspring/resources/video_card'
require 'boxxspring/resources/picture_card'
require 'boxxspring/resources/text_card'
require 'boxxspring/resources/atomic_video_card'
require 'boxxspring/resources/advertising_doubleclick_advertisement'
require 'boxxspring/resources/advertising_liverail_advertisement'
require 'boxxspring/resources/video'
require 'boxxspring/resources/video_source'
require 'boxxspring/resources/artifact'
require 'boxxspring/resources/story'
require 'boxxspring/resources/page'
require 'boxxspring/resources/author'
require 'boxxspring/resources/school'
require 'boxxspring/resources/player'
require 'boxxspring/resources/team'
require 'boxxspring/resources/organization'
require 'boxxspring/resources/reaction'
require 'boxxspring/resources/attribution'
require 'boxxspring/resources/tag'
require 'boxxspring/resources/playlist'
require 'boxxspring/resources/group'
require 'boxxspring/resources/property'
require 'boxxspring/resources/service'
require 'boxxspring/resources/legacy_service'
require 'boxxspring/resources/social_service'
require 'boxxspring/resources/source'
require 'boxxspring/resources/task'
require 'boxxspring/resources/videos_ingestion_task'
require 'boxxspring/resources/videos_picture_task'
require 'boxxspring/resources/feed_generation_task'
require 'boxxspring/resources/subscription_ingestion_task'
require 'boxxspring/resources/sample'
require 'boxxspring/resources/metric'
require 'boxxspring/resources/distribution'
require 'boxxspring/resources/facebook_page_distribution'
require 'boxxspring/resources/twitter_distribution'
require 'boxxspring/resources/youtube_distribution'
require 'boxxspring/resources/facebook_page_distribution_task'
require 'boxxspring/resources/twitter_distribution_task'
require 'boxxspring/resources/youtube_distribution_task'
require 'boxxspring/resources/artifact_locator'

require 'boxxspring/resources/youtube_channel_service'
require 'boxxspring/resources/facebook_page_service'
require 'boxxspring/resources/twitter_service'

require 'boxxspring/resources/analytics_media_sample'

require 'boxxspring/resources/branding_rule'
require 'boxxspring/resources/videos_branding_task'

require 'boxxspring/resources/videos_interrogation_task'

