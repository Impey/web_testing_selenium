require 'faker'

class RandomGenerator
 include Faker
  
  def name
    Faker::HarryPotter.character
  end



end





 