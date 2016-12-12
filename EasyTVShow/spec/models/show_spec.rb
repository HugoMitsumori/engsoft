require 'rails_helper'

RSpec.describe Show, type: :model do
  subject { FactoryGirl.build(:show) }

  it { is_expected.to validate_presence_of(:title) }
end
