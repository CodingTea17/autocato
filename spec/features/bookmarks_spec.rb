require 'rails_helper'

RSpec.feature 'Bookmarks', type: :feature do
  scenario 'User adds a bookmark' do
    skip 'Not implemented yet'
    create_and_login_user

    bookmarks_list.add
    new_bookmark_form.url = 'www.specialsite.com'
    new_bookmark_form.submit

    expect(bookmarks_list.previews).to include(url: 'www.specialsite.com')
  end

  scenario 'User views their bookmarks' do
    skip 'Not implemented yet'
    user = create :user
    create_list :bookmark, 3, user: user
    stubbed_login_as user

    # TODO: - add rspec-collection_matchers or change line below
    expect(bookmarks_list).to have_exactly(3).previews
    expect(bookmarks_list).to be_ordered_by :date
  end

  scenario 'User opens a bookmark' do
    skip 'Not implemented yet'
    user = create :user
    create :bookmark, user: user, url: 'www.example.com'
    stubbed_login_as user
    stub_request(:get, 'www.example.com')

    bookmarks_list.first_preview.open

    switch_to_most_recent_window
    expect(current_url).to include 'www.example.com'
  end

  scenario 'User sorts bookmarks by title' do
    skip 'Not implemented yet'
    user = create :user
    create_list :bookmark, 3, user: user
    stubbed_login_as user

    bookmarks_list.sort_by(:title)

    expect(bookmarks_list).to be_ordered_by :title
  end

  scenario 'User deletes a bookmark' do
    skip 'Not implemented yet'
    user = create :user
    create :bookmark, user: user
    stubbed_login_as user

    bookmarks_list.first_preview.delete

    # TODO: - add rspec-collection_matchers or change line below
    expect(bookmarks_list).to have_exactly(0).previews
  end

  scenario 'User updates the url for a bookmark' do
    skip 'Not implemented yet'
    user = create :user
    bookmark = create :bookmark, user: user
    stubbed_login_as user

    new_url = bookmark.url + '/special_folder'
    bookmarks_list.first_preview.edit
    edit_bookmark_form.url = new_url
    edit_bookmark_form.submit

    expect(bookmarks_list.previews).to include(url: new_url)
  end
end
