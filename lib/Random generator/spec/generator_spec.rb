require 'spec_helper'


describe Generator do 
  context 'Unit testing for random generator'
  before(:all) do
    @rand = rand(2..10)
    @postcode_array = Generator.new.postcodes.random_array(@rand)
    end

  
    it 'should return no more then 10 values' do
     expect(@postcode_array.length).to eq @rand
    end

    it 'Should return an array' do 
      expect(@postcode_array).to be_kind_of(Array)
    end

    it 'should return string values' do 
      @postcode_array.each do |i|
      expect(i).to be_kind_of(String)
      end
    end

    it 'should return postcodes no longer then 9' do 
      @postcode_array.each do |i|
      expect(i.length).to be_between(5,9)
      end
    end 



  end




