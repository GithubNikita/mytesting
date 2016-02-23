Then(/^I wait until data of app is loaded for checking demo button$/) do
   wait_for_elements_exist([ "* id:'text_title'", "* id:'text_region'", "* id:'text_size'", "* id:'pager'", "* id:'kioskLayout'", "* id:'archiveTab'" ], :timeout => 600)
end

Then(/^I check demo button$/) do
  query("* text:'Demo anzeigen'", "* id:'demoFragment'", "* id:'demo_button'" )
end

Then(/^I see progress bar$/) do
  query("* id:'progressBar'" )
end