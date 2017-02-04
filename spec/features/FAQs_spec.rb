feature 'FAQs page' do

  scenario "User finds FAQs page" do
    go_to_dca_website
    and_click_on_what_we_do
    and_click_on_FAQs
    then_I_see_FAQs_page
  end

  def go_to_dca_website
    visit "/"
  end

  def and_click_on_what_we_do
    #scroll to the middle section of the page
    page.execute_script("window.scrollTo(0, 2000)")
    within("section.block-what-we-do") do
      click_link("What we do")
    end
  end

  def and_click_on_FAQs
    #scroll to the bottom section of the page
    page.execute_script("window.scrollTo(0, 5000)")
    within("footer.footer") do
      click_link("FAQs")
    end
  end

  def then_I_see_FAQs_page
    expect(page).to have_current_path("/what-we-do/faqs/")
  end

end
