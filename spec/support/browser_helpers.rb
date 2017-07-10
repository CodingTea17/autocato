module BrowserHelpers
  def click_browser_back_button
    page.evaluate_script('window.history.back()')
  end

  def switch_to_most_recent_window
    @session.switch_to_window(@session.windows.last)
  end
end

RSpec.configure do |config|
  config.include BrowserHelpers, type: :feature
end
