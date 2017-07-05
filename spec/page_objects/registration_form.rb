module PageObjects
  class RegistrationForm < Base
    def fill_and_submit_with(user_info)
      self.email = user_info.email
      self.password = user_info.password
      submit
    end

    def email=(email)
      fill_in 'user_email', with: email
    end

    def password=(password)
      fill_in 'user_password', with: password
      fill_in 'user_password_confirmation', with: password
    end

    def submit
      click_on 'Sign up'
    end

    def selector
      'form#new_user'
    end
  end
end
