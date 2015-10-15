require 'active_support'
require 'active_support/all'
require 'fnv'

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


require 'boxxspring/resources/property'
require 'boxxspring/resources/picture'
require 'boxxspring/resources/user_agent'
require 'boxxspring/resources/theme_environment'
require 'boxxspring/resources/theme_template'
require 'boxxspring/resources/theme'
require 'boxxspring/resources/feed'
require 'boxxspring/resources/filter'
require 'boxxspring/resources/filter_criteria'
require 'boxxspring/resources/advertising_doubleclick_advertisement'
require 'boxxspring/resources/advertising_liverail_advertisement'
require 'boxxspring/resources/video'
require 'boxxspring/resources/video_source'
require 'boxxspring/resources/video_source_segment'
require 'boxxspring/resources/artifact_relationship'
require 'boxxspring/resources/artifact'
require 'boxxspring/resources/artifact_locator'


# Services & Distributions
require 'boxxspring/resources/service'
require 'boxxspring/resources/setting'
require 'boxxspring/resources/sponsor'
require 'boxxspring/resources/legacy_service'
require 'boxxspring/resources/social_service'
require 'boxxspring/resources/facebook_page_service'
require 'boxxspring/resources/twitter_service'
require 'boxxspring/resources/youtube_channel_service'
require 'boxxspring/resources/dailymotion_channel_service'
require 'boxxspring/resources/subscription'
require 'boxxspring/resources/distribution'
require 'boxxspring/resources/verizon_distribution'
require 'boxxspring/resources/facebook_page_distribution'
require 'boxxspring/resources/twitter_distribution'
require 'boxxspring/resources/youtube_distribution'
require 'boxxspring/resources/dailymotion_distribution'
require 'boxxspring/resources/boxxspring_distribution'
require 'boxxspring/resources/distribution_activity'
require 'boxxspring/resources/branding_rule'


## Tasks
require 'boxxspring/resources/task'
require 'boxxspring/resources/task_dependent'
require 'boxxspring/resources/videos_ingestion_task'
require 'boxxspring/resources/videos_interrogation_task'
require 'boxxspring/resources/videos_picture_task'
require 'boxxspring/resources/feed_generation_task'
require 'boxxspring/resources/subscription_ingestion_task'
require 'boxxspring/resources/facebook_page_distribution_task'
require 'boxxspring/resources/twitter_distribution_task'
require 'boxxspring/resources/youtube_distribution_task'
require 'boxxspring/resources/dailymotion_distribution_task'
require 'boxxspring/resources/verizon_distribution_task'
require 'boxxspring/resources/boxxspring_distribution_task'
require 'boxxspring/resources/youtube_subscription_task'
require 'boxxspring/resources/twitter_subscription_task'
require 'boxxspring/resources/vimeo_subscription_task'
require 'boxxspring/resources/video_article_curation_task'
require 'boxxspring/resources/youtube_subscription_metadata_task'
require 'boxxspring/resources/twitter_subscription_metadata_task'
require 'boxxspring/resources/vimeo_subscription_metadata_task'
require 'boxxspring/resources/artifact_curation_task'
require 'boxxspring/resources/videos_curation_task'
require 'boxxspring/resources/videos_branding_task'
require 'boxxspring/resources/clip_creation_task'



require 'boxxspring/resources/sample'
require 'boxxspring/resources/metric'
require 'boxxspring/resources/analytics_media_sample'
