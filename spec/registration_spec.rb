describe 'testing the demoq automation form' do 
  before(:all) do
   @driver = QatoolsForm.new
   @driver.visit_practise_form
   @url = 'https://www.toolsqa.com/automation-practice-form'
   @name =  Faker::HarryPotter.character
   @place = Faker::HarryPotter.location
  end
  context 'testing the postive paths for the form' do
  
  it 'should land on the registraction page' do
   expect(@driver.current_url).to eq @url
  end

  it 'should accpt a first name' do
    @driver.input_firstname_field(@name)
    expect(@driver.input_firstname_field_value).to eq @name
   end


  end
end

