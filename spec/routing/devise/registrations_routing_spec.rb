require 'rails_helper'

RSpec.describe 'Devise registrations routing', type: :routing do
  xit { expect(get: '/users/sign_up').to_not be_routable }
end
