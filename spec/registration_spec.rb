describe 'testing the demoq automation form' do 
  before(:all) do
   @driver = QatoolsForm.new
   @driver.visit_practise_form
   @url = 'https://www.toolsqa.com/automation-practice-form'
   @fname = Generator.new.random_form.name
   @lname = Generator.new.random_form.lname
   @date = Generator.new.random_form.date.to_s
   
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
    @driver.input_lastname_field(@lname)
    expect(@driver.input_lastname_field_value).to eq @lname
   end

   it 'should accept a date' do 
    @driver.input_date_field(@date)
    expect(@driver.input_date_field_value).to eq @date
   end
   
   it 'should select female' do
    @driver.input_gender_button
   end

   it 'should select 2 years' do 
    @driver.input_exp_button
   end

  end
end


