require 'rails_helper'
require 'capybara/rspec'


RSpec.describe Opinion, :type => :model do
  
  describe "Opinon tests" do


    it { should belong_to(:user)}
    it { should have_many(:comments)}
    
  end

  
 
   
end
