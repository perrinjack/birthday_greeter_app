# frozen_string_literal: true

feature 'attacking' do
  scenario 'attacking confirmed' do
    sign_in_process
    click_button('attack')
    expect(page).to have_content('player 2 got attacked')
  end

  scenario 'reduces and displays player 2 HP' do
    sign_in_process
    click_button('attack')
    expect(page).to have_content('player 2 40 HP')
  end
end
