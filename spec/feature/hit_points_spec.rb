

feature 'Checks to see other players hit points' do

  scenario 'Shows Player 2 Hit Points' do
    sign_in_process
    expect(page).to have_content( "Rae: 100 HP")
  end
end
