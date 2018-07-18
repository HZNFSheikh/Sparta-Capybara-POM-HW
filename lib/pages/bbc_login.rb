require 'capybara/dsl'

class BBC_Login
  include Capybara::DSL

  USERNAME_INPUT = 'username'
  DUMMY_EMAIL = 'djhammy103@gmail.com'
  PASSWORD_INPUT = 'password'
  DUMMY_PASSWORD = 'fuckoff786!'
  INCORRECT_EMAIL = 'hsheikh@spartaglobal.com'
  WRONG_PASSWORD = 'Acad3my1'
  SHORT_PASSWORD = 'pass'
  WRONG_USERNAME = 'hamzilla'
  CHAR_LIMIT_EMAIL = 'test-emailk@=mail.com'



  def fill_email
    fill_in USERNAME_INPUT, with: DUMMY_EMAIL
  end

  def fill_password
    fill_in PASSWORD_INPUT, with: DUMMY_PASSWORD
    sleep 1
  end

  def click_submit
    click_button 'Sign in'
    sleep 2
  end


  # Functions for clicking fields and submit button

  def click_email
    find('#user-identifier-input').click
    sleep 2
  end

  def click_password
    find('#password-input').click
    sleep 1
  end

  def click_submit
    click_button 'Sign in'
    sleep 1
  end


  #  Error message methods
  def incorrect_email_error
    page.has_content?('Sorry, we can’t find an account with that email.')
  end

  def incorrect_password_error
    page.has_content?('match')
  end

  def missing_field_error
    page.has_content?('Something\'s missing')
  end

  def short_password_error
    page.has_content?('password is too short')
  end

  def non_user_error
    page.has_content?('include')
  end

  def wrong_char_error
    page.has_content?('Sorry, that email doesn’t look right.')
  end

#Incorrect email functions

  def fill_wrong_email
    fill_in USERNAME, with: INCORRECT_EMAIL
    sleep 1
  end

  def fill_wrong_char_email
    fill_in USERNAME, with: CHAR_LIMIT_EMAIL
    sleep 1
  end

  def fill_wrong_username
    fill_in USERNAME, with: WRONG_USERNAME
    sleep 1
  end

#Incorrect Password Functions

  def fill_wrong_password
    fill_in PASSWORD_NAME, with: WRONG_PASSWORD
    sleep 1
  end

  def fill_short_password
    fill_in PASSWORD_NAME, with: SHORT_PASSWORD
    sleep 1
  end

end
