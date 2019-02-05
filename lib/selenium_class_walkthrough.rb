require 'selenium-webdriver'
require_relative './Random/randomGenerator/Generator'
class QatoolsForm

  PRACTISE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  DATE_FIELD = 'datepicker'
  GENDER_BUTTON = "sex-#{@ran}"
  @rand = rand(0..1)
  


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

 
end




