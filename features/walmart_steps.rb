Given(/^I'm on "([^"]*)" page$/) do |path_to|
  visit path_to
  CLOSE_AD = ".//div[@class='newsletter-promo-modal-close mfp-close']"

  puts "Opened the website correctly"

  if find(:xpath,CLOSE_AD).exist
    find(:xpath,CLOSE_AD).click
    puts "Advertising pop-up closed successfully"
  end


end


When(/^I type "([^"]*)" in search field$/) do |string_search|
  TXT_SEARCH = ".//*[@id='suggestion-search']"
  BTN_SEARCH = ".//button[@class='search-icon']"


  find(:xpath,TXT_SEARCH).set string_search
  puts "Typed in TV correctly"

  find(:xpath,BTN_SEARCH).click
  puts "Clicked the search button"

end


Then(/^I should see "([^"]*)" in result$/) do |string_expected|
  page.should have_content string_expected
  puts "Page was loaded as expected"
end

When (/^I click the item "([^"]*)"/) do |string_item1|
  LINK_ITEM = ".//span[contains(text(),'" + string_item1 + "') and @class='product-title']"
  find(:xpath,LINK_ITEM).click
  puts "Clicked on the desired product with success"
end

When (/^I click the button "([^"]*)"/) do |string_item2|
  BUT_ITEM = ".//span[contains(text(),'" + string_item2 + "') and @class='text']"
  find(:xpath,BUT_ITEM).click
  puts "Clicked the add to cart button correctly"

end

And (/^I also click the button "([^"]*)"/) do |string_item3|
  BUT_CONT = ".//button[contains(text(),'" + string_item3 + "') and @id='navegaCarrinho']"
  find(:xpath,BUT_CONT).click
  puts "Clicked the continue button correctly"

end

And (/^I click the cart icon/) do
  CART = ".//span[@class='cart-icon']"
  find(:xpath,CART).click
  puts "Clicked the cart link successfully"
end


