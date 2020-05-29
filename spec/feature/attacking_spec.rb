
feature "attacking" do

  scenario "attacking confirmed" do
    sign_in_process
    click_button("attack")
    expect(page).to have_content("player 1 got attacked")
  end
end
