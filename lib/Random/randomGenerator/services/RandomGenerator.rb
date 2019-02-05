require 'faker'

class RandomGenerator
 include Faker
  
  def name
    Faker::Name.first_name
  end

  def lname
    Faker::Name.last_name
  end



end





 