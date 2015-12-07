module Boxxspring

  class Video < Base

    field     :created_at
    field     :updated_at

    field     :id
    field     :storage_key
    field     :filename
    field     :content_type
    field     :size
    field     :duration
    field     :picture_id
    field     :height
    field     :width

    field     :codec
    field     :codec_long
    field     :color_and_chroma
    field     :profile
    field     :level
    field     :bit_rate
    field     :frame_rate
    field     :display_aspect_ratio
    field     :sample_aspect_ratio
    field     :audio_codec
    field     :audio_codec_long
    field     :audio_channels
    field     :audio_bit_rate
    field     :audio_sample_rate
    field     :audio_channel_layout
    
    has_many  :video_sources
    has_many  :tracks

    has_many  :texts
    
  end

end
