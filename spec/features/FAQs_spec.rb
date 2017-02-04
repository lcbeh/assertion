feature "Route to FAQs" do
  background do
    visit "/"
  end

  scenario "User visits main page" do
    expect(page).to have_content("Doctor Care Anywhere")
  end

  scenario "User click on 'What we do' at the top of the main page" do
    within("nav.header__nav") do
      click_link("What we do")
      expect(page).to have_current_path("/what-we-do/")
    end
  end

  scenario "User click on 'What we do' at the bottom of the main page" do


    within("footer.footer") do
      last_picture = page.driver.find_elements(:css, 'div.pic').last
last_picture.location_once_scrolled_into_view

      click_link("What we do")
      expect(page).to have_current_path("/what-we-do/")

    end
  end

  scenario "User click on FAQs link at the top of the main page" do
    visit '/what-we-do'
    within("nav.header__nav") do
      find('.active').hover
      click_link("FAQs")
      expect(page).to have_current_path("/what-we-do/faqs/")
    end
  end

  scenario "User click on FAQs link at the bottom of the main page" do
    visit '/what-we-do'
    within("footer.footer") do
      click_link("FAQs")
      expect(page).to have_current_path("/what-we-do/faqs/")
    end
  end

end
