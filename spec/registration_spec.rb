describe 'testing the demoq automation form' do 
  before(:all) do
   @driver = QatoolsForm.new
   @driver.visit_practise_form
   @url = 'https://www.toolsqa.com/automation-practice-form'
   @fname = Generator.new.random_form.name
   @lname = Generator.new.random_form.lanme
   
  end
  context 'testing the postive paths for the form' do
  
  it 'should land on the registraction page' do
   expect(@driver.current_url).to eq @url
  end

  it 'should accpet a first name' do
    @driver.input_firstname_field(@fname)
    expect(@driver.input_firstname_field_value).to eq @fname
   end

   it 'should accept a last name' do
    @driver.input_firstname_field(@lname)


  end
end

