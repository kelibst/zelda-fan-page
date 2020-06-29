require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Friendship, type: :model do
  describe 'Friendship tests' do
    it { should belong_to(:user) }
    it { should belong_to(:follower) }
  end
end
