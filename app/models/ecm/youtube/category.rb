require_dependency 'concerns/model/translates_value'

module Ecm::Youtube
  class Category < ActiveRecord::Base
    include Concerns::Model::TranslatesValue

    translates_value :identifier

    # associations
    has_many :videos

    # validations
    validates :identifier, presence: true, uniqueness: true

    def human
      "#{self.class.model_name.human}: #{translated_identifier}"
    end
  end
end
