
def sign_in_process
  visit("/")
    fill_in 'player_1', with: "Sophie"
    fill_in 'player_2', with: "Rae"
    click_button("Submit")
end