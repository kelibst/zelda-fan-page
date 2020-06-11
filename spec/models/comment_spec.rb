require 'rails_helper'
require 'capybara/rspec'


RSpec.describe Comment, :type => :model do
  
  describe "Conments tests" do


    it { should validate_presence_of(:content)}
    it { should belong_to(:user)}
    it { should belong_to(:opinion)}
    
  end

  
 
   
end