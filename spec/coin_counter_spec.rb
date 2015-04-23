require('rspec')
require('coin_counter')

describe('String#coin_counter') do
  it('returns how many pennies for a given amount of change') do
    expect('4'.coin_counter()).to(eq('4 pennies'))
  end

  it('returns how many nickles and pennies for a given amount of change') do
    expect('8'.coin_counter()).to(eq('1 nickel, 3 pennies'))
  end

  it('returns how many dimes, nickels, and pennies for a given amount of change') do
    expect('17'.coin_counter()).to(eq('1 dime, 1 nickel, 2 pennies'))
  end

  it('returns how many quarters, dimes, nickels, and pennies for a given amount of change') do
    expect('87'.coin_counter()).to(eq('3 quarters, 1 dime, 2 pennies'))
  end
end
