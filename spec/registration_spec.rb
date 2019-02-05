describe 'testing the demoq automation form' do 
  before(:all) do
   @driver = QatoolsForm.new
   @driver.visit_practise_form
   @url = 'https://www.toolsqa.com/automation-practice-form'
  end
  context 'testing the postive paths for the form' do
  
  it 'should land on the registraction page' do
   expect(driver.current_url).to eq @url
  end


  end
end