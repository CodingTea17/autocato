module PageObjects
  class NewBookmarkForm < Base
    def url=(url)
      this.fill_in 'Url', with: url
    end

    def submit
      this.click_on 'Save'
    end

    def selector
      '#new_bookmark'
    end
  end
end
