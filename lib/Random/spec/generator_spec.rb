require 'spec_helper'


describe Generator do 
  context 'Unit testing for random generator'
  before(:all) do
    @rand = rand(2..10)
    @random = Generator.new.random_form
    end

  
    it 'should return no more then 10 values' do
     expect(@random.name).to be_kind_of(String)
    end

    


  end




