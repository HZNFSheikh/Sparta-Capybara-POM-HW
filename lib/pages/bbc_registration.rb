require 'capybara/dsl'

class BBC_Registration

  include Capybara::DSL


  #Constants

  DAY_DOB_INPUT_ID = '#day-input'
  MONTH_DOB_INPUT_ID = '#month-input'
  YEAR_DOB_INPUT_ID = '#year-input'
  SUBMIT_BUTTON_ID = '#submit-button'



  def click_13_or_over
    click_link('13 or over')
    sleep 2
  end

  def enter_day
    fill_in 'dateOfBirthDay', :with => '01'
    fill_in 'dateOfBirthMonth', :with => '08'
    fill_in 'dateOfBirthYear', :with => '1992'
    sleep 3
  end

  def click_dob_button
    find(SUBMIT_BUTTON_ID).click
    #@session.click_button 'Continue'
    sleep 1
  end

  def enter_email
    fill_in 'email', :with => email
  end

  def register_password
    fill_in 'password', :with => 'qwerty786!'
  end

  def enter_postcode
    fill_in 'postcode', :with =>'B203EN'
  end

  def choose_gender
    select 'Male', from: 'Gender'
    sleep 1
  end

  def click_opt_out
    all('.button__text-wrapper')[1].click
    sleep 1
  end

  def click_register

    click_link('Register')

  end

  def verify_registration
    has_content?("Thanks. You're now signed in.")

  end


end
