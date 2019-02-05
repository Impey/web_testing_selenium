require 'selenium-webdriver'
require_relative './Random/randomGenerator/Generator'
class QatoolsForm

  PRACTISE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  DATE_FIELD = 'datepicker'
  GENDER_BUTTON = "sex-1"
  EXP_BUTTON = "exp-1"
  PROF_BUTTON = "profession-0"
  PROFILE_PIC_BUTTON = "photo"
  
  


 def initialize
   @chrome_driver = Selenium::WebDriver.for :chrome 
 end

 def visit_practise_form
   @chrome_driver.get(PRACTISE_FORM_URL)
 end
 

 def input_firstname_field(text)
   @chrome_driver.find_element(:name,FIRST_NAME_FIELD_NAME).send_keys(text)
 end

 def input_firstname_field_value
  @chrome_driver.find_element(:name,FIRST_NAME_FIELD_NAME)['value']
 end

 def input_lastname_field(text)
  @chrome_driver.find_element(:name,LAST_NAME_FIELD_NAME).send_keys(text)
 end


 def input_lastname_field_value 
  @chrome_driver.find_element(:name,LAST_NAME_FIELD_NAME)['value']
 end
 

 def current_url
   @chrome_driver.current_url 
 end
 
 def input_date_field(text)
  @chrome_driver.find_element(:id,DATE_FIELD).send_keys(text)
 end

 def input_date_field_value
  @chrome_driver.find_element(:id,DATE_FIELD)['value']
 end

 def input_gender_button
  @chrome_driver.find_element(:id,GENDER_BUTTON).click
 end

 def input_gender_button_value
  @chrome_driver.find_element(:id,GENDER_BUTTON)['value']
 end

 def input_exp_button
  @chrome_driver.find_element(:id,EXP_BUTTON).click
 end

 def input_exp_button_value
  @chrome_driver.find_element(:id,EXP_BUTTON)['value']
 end

 def input_proff_button
  @chrome_driver.find_element(:id,PROF_BUTTON).click
 end

 def input_proff_button_value
  @chrome_driver.find_element(:id,PROF_BUTTON)['value']
 end

 def input_profile_picture_button
  @chrome_driver.find_element(:id,PROFILE_PIC_BUTTON).click
 end 

  def dropdown
    mySelect = @chrome_driver.find_element(:id,"continents")
    option = mySelect.find_element(:css, "option:nth-child(3)")
    option.click
  end

  


 
end


test = QatoolsForm.new
test.visit_practise_form
sleep 5
test.dropdown
sleep 5

 





