require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('coin counter path', {:type => :feature}) do
  it('taking user input and give output that has gone through the coin_counter method') do
    visit('/')
    fill_in('change', :with => 87)
    click_button('send_btn')
    expect(page).to have_content('3 quarters, 1 dime, 2 pennies')
  end
end
