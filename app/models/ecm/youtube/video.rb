module Ecm::Youtube
  class Video < ActiveRecord::Base
    include ActsAsPublished::ActiveRecord
    include ActsAsList
    
    YOUTUBE_METHODS = %w(available? video_id provider title description duration date thumbnail_small thumbnail_medium thumbnail_large embed_url embed_code)

    acts_as_list scope: 'category_id'
    acts_as_published

    # associations
    belongs_to :category

    # callbacks
    before_save :udpate_meta_data, if: Proc.new { |video| video.identifier_changed? }

    # delegates
    delegate *YOUTUBE_METHODS, to: :meta_data, prefix: true

    # scopes
    # default_scope { includes(:category).order('ecm_youtube_categories.identifier, position ASC') }

    # validations
    validates :category_id, presence: true
    validates :identifier, presence: true, uniqueness: { scope: 'category_id' }

    def human
      "#{self.class.model_name.human}: #{title}"
    end

    def meta_data
      @meta_data ||= VideoInfo.new(youtube_url)
    end

    private

    def udpate_meta_data
      self.title = meta_data_title
      self.description = meta_data_description
      self.duration = meta_data_duration
    end

    def youtube_url
      "http://www.youtube.com/watch?v=#{identifier}"
    end
  end
end
