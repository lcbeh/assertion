feature "Route to FAQs" do
  background do
    visit "/"
  end

  scenario "User visits home page" do
    expect(page).to have_content("Doctor Care Anywhere")
  end

  scenario "User clicks on 'What we do' link in navigation bar on top of the page" do
    within("nav.header__nav") do
      click_link("What we do")

      expect(page).to have_current_path("/what-we-do/")
    end
  end

  scenario "User clicks on 'What we do' link in the middle section" do
    page.execute_script("window.scrollTo(0,2000)")
    within("section.block-what-we-do") do
      click_link("What we do")

      expect(page).to have_current_path("/what-we-do/")
    end
  end

  scenario "User clicks on 'What we do' link in the footer section" do
    page.execute_script("window.scrollTo(0,5000)")
    within("footer.footer") do
      click_link("What we do")

      expect(page).to have_current_path("/what-we-do/")
    end
  end

  scenario "User clicks on 'FAQs' link in navigation bar on top of the page" do
    visit "/what-we-do"
    within("nav.header__nav") do
      find(".active").hover
      click_link("FAQs")

      expect(page).to have_current_path("/what-we-do/faqs/")
    end
  end

  scenario "User clicks on 'FAQs' link in the footer section" do
    visit "/what-we-do"
    page.execute_script("window.scrollTo(0,5000)")
    within("footer.footer") do
      click_link("FAQs")

      expect(page).to have_current_path("/what-we-do/faqs/")
    end
  end

end
