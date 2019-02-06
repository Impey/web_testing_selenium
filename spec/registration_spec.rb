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
     expect(@driver.input_gender_button_value).to eq 'Female'
   end

   it 'should return value for 2 years experience' do 
    @driver.input_exp_button
     expect(@driver.input_exp_button_value).to eq "2"
   end

   it 'should return value of manual tester on the button' do
    @driver.input_proff_button
     expect(@driver.input_proff_button_value).to eq 'Manual Tester'
    end

   it 'should return the selected dropdown opition' do
    @driver.dropdown
     expect(@driver.dropdown_value).to eq "Africa"
    end
  end
end


