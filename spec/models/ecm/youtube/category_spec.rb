require 'rails_helper'

module Ecm::Youtube
  describe Category, type: :model do
    it { should have_many :videos }
  end
end
