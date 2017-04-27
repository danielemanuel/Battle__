require './app.rb'
require 'capybara'

describe Battle do


 it 'expects names of the players to be displayed' do
   sign_in_and_play
   expect(page).to have_content("Paul vs. John")
 end

 it 'can see player 2 hit points' do
   sign_in_and_play
   expect(page).to have_content("John HP: 100")
 end

it 'attacks player 2' do
  sign_in_and_play
  click_button("Attack")
  expect(page).to have_content("Paul attacked John")
end


end
