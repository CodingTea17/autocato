module PageObjects
  class BookmarksList < Base
    def add
      click_on 'New Bookmark'
    end

    def previews
      this.all('tr')
    end

    def selector
      '#bookmarks'
    end
  end
end
