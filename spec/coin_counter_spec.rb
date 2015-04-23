require('rspec')
require('coin_counter')

describe('String#coin_counter') do
  it('returns how many pennies for a given amount of change') do
  expect('4'.coin_counter()).to(eq('4 pennies'))  
  end

end
