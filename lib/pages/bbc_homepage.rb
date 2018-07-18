require 'capybara/dsl'

class BBC_Homepage

  include Capybara::DSL


  #Constants
  HOMEPAGE_URL = 'http://www.bbc.co.uk'
  SIGN_IN_LINK_ID = '#idcta-username' #HASHTAGS FOR ID's
  REGISTER_LINK_CLASSNAME = '.link--primary' #DOT FOR CLASSES


  def visit_home_page
    visit(HOMEPAGE_URL)
    sleep 2
  end

  def click_sign_in_link
    find(SIGN_IN_LINK_ID).click
  end

  def click_go_to_register
    find(REGISTER_LINK_CLASSNAME).click
    sleep 2
  end



end
