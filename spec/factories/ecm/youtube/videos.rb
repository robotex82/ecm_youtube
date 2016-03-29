FactoryGirl.define do
  factory :ecm_youtube_video, class: 'Ecm::Youtube::Video' do
    association :category, factory: :ecm_youtube_category
    identifier 'aghP0PMm8jg'
  end
end
