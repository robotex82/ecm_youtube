require 'rails_helper'

module Ecm::Youtube
  describe Video, type: :model do
    it { should belong_to :category }
  end
end
