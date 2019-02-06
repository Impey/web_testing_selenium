require 'spec_helper'


describe Generator do 
  before(:all) do
    @rand = rand(1)
    @random = Generator.new.random_form
  end
  context 'Unit testing for random generator' do
    
    it 'it should return name as a String' do
     expect(@random.name).to be_kind_of(String)
    end

    it 'it should return last name as a String' do
     expect(@random.lname).to be_kind_of(String)
     end
     
    end
  end




